import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/search/models/group_dto.dart';

abstract class IHomeRepository {
  Future<Result<List<ScheduleDTO>>> getAllSchedules(
    String universityCode,
    String educationalProgramId,
    String searchType,
  );

  Future<Result<List<ScheduleDTO>>> getMySchedules(
    String universityCode,
    List<GroupDTO> groups,
    String searchType,
  );

  Future<bool> removeAllFromShared();
}
