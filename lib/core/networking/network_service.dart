import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'network_request.dart';
import 'network_response.dart';

class NetworkService {
  NetworkService({
    required this.baseUrl, // Base service url
    dioClient, // Prepared Dio instance could be injected
    httpHeaders, // Global headers could be provided as well
  })  : _dio = dioClient,
        _headers = httpHeaders ?? {};
  Dio? _dio;
  final String baseUrl;
  final Map<String, String> _headers;
  Future<Dio> _getDefaultDioClient() async {
    // Global http header
    _headers['content-type'] = 'application/json; charset=utf-8';
    final dio = Dio()
      ..options.baseUrl = baseUrl
      ..options.headers = _headers
      ..options.connectTimeout = 5000 // 5 seconds
      ..options.receiveTimeout = 3000; // 3 seconds

    return dio;
  }

  void addBasicAuth(String accessToken) {
    _headers['Authorization'] = 'Bearer $accessToken';
  }

  // Generic type and parser are used to properly deserialize JSON
  Future<NetworkResponse<Model>> execute<Model>(
    NetworkRequest request,
    Model Function(dynamic) parser, {
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    _dio ??= await _getDefaultDioClient();

    final req = _PreparedNetworkRequest(
      request,
      parser,
      _dio!,
      {..._headers, ...(request.headers ?? {})},
      onSendProgress,
      onReceiveProgress,
    );

    final result = await compute(
      executeRequest<Model>,
      req,
    );
    print('Result from compute ------>>>>   $result');
    return result;
  }
}

Future<NetworkResponse<Model>> executeRequest<Model>(
  _PreparedNetworkRequest request,
) async {
  try {
    dynamic body = request.request.data.whenOrNull(
      json: (data) => data,
      jsonArray: (data) => data,
      text: (data) => data,
    );
    final response = await request.dio.request(
      request.request.path,
      data: body,
      queryParameters: request.request.queryParams,
      options: Options(
        method: request.request.type.name,
        headers: request.headers,
      ),
      onSendProgress: request.onSendProgress,
      onReceiveProgress: request.onReceiveProgress,
    );
    return NetworkResponse.ok(request.parser(response.data));
  } on DioError catch (error) {
    final errorText = error.toString();
    if (error.requestOptions.cancelToken!.isCancelled) {
      return NetworkResponse.noData(errorText);
    }
    switch (error.response?.statusCode) {
      case 400:
        return NetworkResponse.badRequest(errorText);
      case 401:
        return NetworkResponse.noAuth(errorText);
      case 403:
        return NetworkResponse.noAccess(errorText);
      case 404:
        return NetworkResponse.notFound(errorText);
      case 409:
        return NetworkResponse.conflict(errorText);
      default:
        return NetworkResponse.noData(errorText);
    }
  } catch (error) {
    return NetworkResponse.noData(error.toString());
  }
}

class _PreparedNetworkRequest<Model> {
  final NetworkRequest request;
  final Model Function(dynamic) parser;
  final Dio dio;
  final Map<String, dynamic> headers;
  final ProgressCallback? onSendProgress;
  final ProgressCallback? onReceiveProgress;

  const _PreparedNetworkRequest(
    this.request,
    this.parser,
    this.dio,
    this.headers,
    this.onSendProgress,
    this.onReceiveProgress,
  );
}
