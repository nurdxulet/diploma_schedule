// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_payload.freezed.dart';
part 'user_payload.g.dart';

@freezed
class UserPayload with _$UserPayload {
  const factory UserPayload({
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? password,
    @JsonKey(includeIfNull: false,name: "old_password") String? oldPassword,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) String? birthday,
    @JsonKey(includeIfNull: false) String? name,
  }) = _UserPayload;

  factory UserPayload.fromJson(Map<String, dynamic> json) =>
      _$UserPayloadFromJson(json);
}
