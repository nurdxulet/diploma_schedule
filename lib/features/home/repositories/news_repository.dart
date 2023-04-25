import 'package:schedule/features/home/data/datasource/schedule_datasource.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';

abstract class ScheduleRemoteRepository {
  Future<List<ScheduleDTO?>> getSchedule(String id);
}

class ScheduleRemoteRepositoryImpl implements ScheduleRemoteRepository {
  final ScheduleRemoteDataSource scheduleRemoteRepository;

  ScheduleRemoteRepositoryImpl(this.scheduleRemoteRepository);

  @override
  Future<List<ScheduleDTO?>> getSchedule(String id) async => scheduleRemoteRepository.getSchedule(id);
}
