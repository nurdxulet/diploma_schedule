// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_dto.freezed.dart';
part 'teacher_dto.g.dart';

@freezed
class TeacherDTO with _$TeacherDTO {
  const factory TeacherDTO({
    required String id,
    String? firstName,
    String? middleName,
    String? lastName,
    String? department,
  }) = _TeacherDTO;

  factory TeacherDTO.fromJson(Map<String, dynamic> json) => _$TeacherDTOFromJson(json);

  // @override
  // UserDTO fromJson(Map<String, dynamic> json) => UserDTO.fromJson(json);
}
