import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_body.freezed.dart';

@freezed
class NetworkRequestBody with _$NetworkRequestBody {
  const factory NetworkRequestBody.empty() = Empty;
  const factory NetworkRequestBody.json(Map<String, dynamic> data) = Json;
  const factory NetworkRequestBody.jsonArray(List<dynamic> listData) = JsonArray;
  const factory NetworkRequestBody.text(String data) = Text;
}