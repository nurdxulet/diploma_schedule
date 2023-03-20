import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/core/network/interfaces/base_model.dart';

part 'basic_response.g.dart';

@JsonSerializable()
class BasicResponse extends BaseModel<BasicResponse> {
  final int? statusCode;
  final String? message;
  final dynamic data;

  BasicResponse({
    this.statusCode,
    this.message,
    this.data,
  });

  factory BasicResponse.fromJson(Map<String, dynamic> json) => _$BasicResponseFromJson(json);

  @override
  BasicResponse fromJson(Map<String, dynamic> json) => BasicResponse.fromJson(json);

  @override
  String toString() => 'BasicResponse(message: $message)';
}
