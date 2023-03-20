// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required int id,
    String? name,
    String? email,
    String? phone,
    @JsonKey(name: 'region_id') int? regionId,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'created_at') String? createdAt,
    TokenDTO? token,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  // @override
  // UserDTO fromJson(Map<String, dynamic> json) => UserDTO.fromJson(json);
}

@freezed
class TokenDTO with _$TokenDTO {
  const factory TokenDTO({
    @JsonKey(name: 'access_token') String? accessToken,
  }) = _TokenDTO;

  factory TokenDTO.fromJson(Map<String, dynamic> json) => _$TokenDTOFromJson(json);

  // @override
  // UserDTO fromJson(Map<String, dynamic> json) => UserDTO.fromJson(json);
}
