import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';

abstract class IHomeRepository {
  Future<Result<List<ScheduleDTO>>> getAllSchedules(
    String universityCode,
    String educationalProgramId,
    String searchType,
  );

  Future<Result<List<ScheduleDTO>>> getMySchedules(
    String universityCode,
    String educationalProgramId,
    String searchType,
  );

  Future<bool> removeAllFromShared();
}
