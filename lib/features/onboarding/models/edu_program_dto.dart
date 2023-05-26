// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edu_program_dto.freezed.dart';
part 'edu_program_dto.g.dart';

@freezed
class EduProgramDTO with _$EduProgramDTO {
  const factory EduProgramDTO({
    required String id,
    String? title,
    bool? elective,
    String? universityId,
  }) = _EduProgramDTO;

  factory EduProgramDTO.fromJson(Map<String, dynamic> json) => _$EduProgramDTOFromJson(json);
}
