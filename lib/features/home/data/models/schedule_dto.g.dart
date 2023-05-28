// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDTO _$$_ScheduleDTOFromJson(Map<String, dynamic> json) =>
    _$_ScheduleDTO(
      id: json['id'] as String?,
      sessionType: json['sessionType'] as String?,
      subject: json['subject'] == null
          ? null
          : SubjectDTO.fromJson(json['subject'] as Map<String, dynamic>),
      teacher: json['teacher'] == null
          ? null
          : TeacherDTO.fromJson(json['teacher'] as Map<String, dynamic>),
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => GroupDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      room: json['room'] == null
          ? null
          : RoomDTO.fromJson(json['room'] as Map<String, dynamic>),
      week: json['week'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$$_ScheduleDTOToJson(_$_ScheduleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionType': instance.sessionType,
      'subject': instance.subject,
      'teacher': instance.teacher,
      'groups': instance.groups,
      'room': instance.room,
      'week': instance.week,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
    };

_$_RoomDTO _$$_RoomDTOFromJson(Map<String, dynamic> json) => _$_RoomDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      universityId: json['universityId'] as String?,
    );

Map<String, dynamic> _$$_RoomDTOToJson(_$_RoomDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'universityId': instance.universityId,
    };
