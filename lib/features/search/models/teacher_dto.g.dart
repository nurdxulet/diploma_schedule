// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeacherDTO _$$_TeacherDTOFromJson(Map<String, dynamic> json) =>
    _$_TeacherDTO(
      id: json['id'] as String,
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      department: json['department'] as String?,
    );

Map<String, dynamic> _$$_TeacherDTOToJson(_$_TeacherDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'department': instance.department,
    };
