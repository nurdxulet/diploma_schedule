import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/subject_dto.dart';
import 'package:schedule/features/search/models/teacher_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_dto.freezed.dart';
part 'schedule_dto.g.dart';

@freezed
class ScheduleDTO with _$ScheduleDTO {
  const factory ScheduleDTO({
    String? id,
    String? sessionType,
    SubjectDTO? subject,
    TeacherDTO? teacher,
    List<GroupDTO>? groups,
    RoomDTO? room,
    String? week,
    DateTime? startTime,
    DateTime? endTime,
  }) = _ScheduleDTO;

  factory ScheduleDTO.fromJson(Map<String, dynamic> json) => _$ScheduleDTOFromJson(json);
}

@freezed
class RoomDTO with _$RoomDTO {
  const factory RoomDTO({
    String? id,
    String? name,
    String? universityId,
  }) = _RoomDTO;

  factory RoomDTO.fromJson(Map<String, dynamic> json) => _$RoomDTOFromJson(json);
}
