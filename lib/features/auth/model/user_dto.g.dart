// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: json['id'] as int,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      regionId: json['region_id'] as int?,
      cityId: json['city_id'] as int?,
      createdAt: json['created_at'] as String?,
      token: json['token'] == null
          ? null
          : TokenDTO.fromJson(json['token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'region_id': instance.regionId,
      'city_id': instance.cityId,
      'created_at': instance.createdAt,
      'token': instance.token,
    };

_$_TokenDTO _$$_TokenDTOFromJson(Map<String, dynamic> json) => _$_TokenDTO(
      accessToken: json['access_token'] as String?,
    );

Map<String, dynamic> _$$_TokenDTOToJson(_$_TokenDTO instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
    };
