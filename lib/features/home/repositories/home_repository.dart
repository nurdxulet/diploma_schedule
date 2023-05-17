import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';

abstract class IHomeRepository {
  Future<Result<List<ScheduleDTO>>> getAllSchedules(String universityCode);
}
