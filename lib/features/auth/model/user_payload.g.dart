// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPayload _$$_UserPayloadFromJson(Map<String, dynamic> json) =>
    _$_UserPayload(
      email: json['email'] as String?,
      password: json['password'] as String?,
      oldPassword: json['old_password'] as String?,
      phone: json['phone'] as String?,
      birthday: json['birthday'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_UserPayloadToJson(_$_UserPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  writeNotNull('old_password', instance.oldPassword);
  writeNotNull('phone', instance.phone);
  writeNotNull('birthday', instance.birthday);
  writeNotNull('name', instance.name);
  return val;
}
