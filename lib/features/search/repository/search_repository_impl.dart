import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/search/datasource/search_remote_ds.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/teacher_dto.dart';
import 'package:schedule/features/search/repository/search_repository.dart';

class SearchRepositoryImpl extends ISearchRepository {
  final ISearchRemoteDS _remoteDS;

  SearchRepositoryImpl({
    required ISearchRemoteDS remoteDS,
  }) : _remoteDS = remoteDS;

  @override
  Future<Result<List<GroupDTO>>> getAllGroups(String universityCode, String educationalProgramId) async {
    final Result<List<GroupDTO>> result = await _remoteDS.getAllGroups(universityCode, educationalProgramId);

    return result;
  }

  @override
  Future<Result<List<TeacherDTO>>> getAllTeachers(String universityCode) async {
    final Result<List<TeacherDTO>> result = await _remoteDS.getAllTeachers(universityCode);

    return result;
  }

  @override
  Future<Result<List<RoomDTO>>> getAllRooms(String universityCode) async {
    final Result<List<RoomDTO>> result = await _remoteDS.getAllRooms(universityCode);

    return result;
  }

  // @override
  // Future<Result<List<ScheduleDTO>>> getTeacherSchedule(String id) async {
  //   final Result<List<ScheduleDTO>> result = await _remoteDS.getGroupSchedule(id);

  //   return result;
  // }
}
