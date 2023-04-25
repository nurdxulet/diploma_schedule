import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schedule_model_dto.g.dart';

@JsonSerializable()
@immutable
class ScheduleDTO {
  final String? id;
  final String? sessionType;
  final String? subjectName;
  final String? teacherId;
  final List<String>? groups;
  final String? room;
  final String? week;
  final DateTime? startTime;
  final DateTime? endTime;

  const ScheduleDTO({
    this.id,
    this.sessionType,
    this.subjectName,
    this.teacherId,
    this.groups,
    this.room,
    this.week,
    this.startTime,
    this.endTime,
  });

  factory ScheduleDTO.fromJson(Map<String, dynamic> json) => _$ScheduleDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleDTOToJson(this);

  @override
  String toString() {
    return toJson().toString();
    
  }
}
