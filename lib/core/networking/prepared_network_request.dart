import 'package:dio/dio.dart';
import 'package:todos_riverpod/core/networking/network_request.dart';

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
