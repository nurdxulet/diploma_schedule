import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';

abstract class ISearchRepository {
  /// Статус аутентификации

  Future<Result<List<ScheduleDTO>>> getGroupSchedule(String id);

  Future<Result<List<ScheduleDTO>>> getSubjectSchedule(String id);

  Future<Result<List<ScheduleDTO>>> getTeacherSchedule(String id);
}
