// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_dto.freezed.dart';
part 'group_dto.g.dart';

@freezed
class GroupDTO with _$GroupDTO {
  const factory GroupDTO({
    required String id,
    String? title,
    int? course,
    String? educationalProgramId,
  }) = _GroupDTO;

  factory GroupDTO.fromJson(Map<String, dynamic> json) => _$GroupDTOFromJson(json);

  // @override
  // UserDTO fromJson(Map<String, dynamic> json) => UserDTO.fromJson(json);
}
