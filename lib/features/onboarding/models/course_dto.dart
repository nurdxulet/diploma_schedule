// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_dto.freezed.dart';
part 'course_dto.g.dart';

@freezed
class CourseDTO with _$CourseDTO {
  const factory CourseDTO({
    required int courseNumber,
    String? educationalProgramId,
  }) = _CourseDTO;

  factory CourseDTO.fromJson(Map<String, dynamic> json) => _$CourseDTOFromJson(json);
}
