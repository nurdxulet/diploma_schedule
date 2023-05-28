import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/teacher_dto.dart';

abstract class ISearchRepository {
  /// Статус аутентификации

  Future<Result<List<GroupDTO>>> getAllGroups(String universityCode, String educationalProgramId);

  Future<Result<List<TeacherDTO>>> getAllTeachers(String universityCode);

  Future<Result<List<RoomDTO>>> getAllRooms(String universityCode);
}
