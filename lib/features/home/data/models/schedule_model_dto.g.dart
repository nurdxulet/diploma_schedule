// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleDTO _$ScheduleDTOFromJson(Map<String, dynamic> json) => ScheduleDTO(
      id: json['id'] as String?,
      sessionType: json['sessionType'] as String?,
      subjectName: json['subjectName'] as String?,
      teacherId: json['teacherId'] as String?,
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as String).toList(),
      room: json['room'] as String?,
      week: json['week'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$ScheduleDTOToJson(ScheduleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionType': instance.sessionType,
      'subjectName': instance.subjectName,
      'teacherId': instance.teacherId,
      'groups': instance.groups,
      'room': instance.room,
      'week': instance.week,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
    };
