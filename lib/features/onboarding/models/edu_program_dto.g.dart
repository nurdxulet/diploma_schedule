// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edu_program_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EduProgramDTO _$$_EduProgramDTOFromJson(Map<String, dynamic> json) =>
    _$_EduProgramDTO(
      id: json['id'] as String,
      title: json['title'] as String?,
      elective: json['elective'] as bool?,
      universityId: json['universityId'] as String?,
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => GroupDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EduProgramDTOToJson(_$_EduProgramDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'elective': instance.elective,
      'universityId': instance.universityId,
      'groups': instance.groups,
    };
