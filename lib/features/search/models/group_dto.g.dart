// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupDTO _$$_GroupDTOFromJson(Map<String, dynamic> json) => _$_GroupDTO(
      id: json['id'] as String,
      title: json['title'] as String?,
      course: json['course'] as int?,
      educationalProgramId: json['educationalProgramId'] as String?,
    );

Map<String, dynamic> _$$_GroupDTOToJson(_$_GroupDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'course': instance.course,
      'educationalProgramId': instance.educationalProgramId,
    };
