// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'university_dto.freezed.dart';
part 'university_dto.g.dart';

@freezed
class UniversityDTO with _$UniversityDTO {
  const factory UniversityDTO({
    String? id,
    String? name,
    String? userId,
    String? code,
  }) = _UniversityDTO;

  factory UniversityDTO.fromJson(Map<String, dynamic> json) =>
      _$UniversityDTOFromJson(json);
}
