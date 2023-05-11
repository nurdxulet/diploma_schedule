// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_dto.freezed.dart';
part 'subject_dto.g.dart';

@freezed
class SubjectDTO with _$SubjectDTO {
  const factory SubjectDTO({
    required String id,
    String? title,
    String? code,
  }) = _SubjectDTO;

  factory SubjectDTO.fromJson(Map<String, dynamic> json) => _$SubjectDTOFromJson(json);

  // @override
  // UserDTO fromJson(Map<String, dynamic> json) => UserDTO.fromJson(json);
}
