import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/datasource/home_remote_ds.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';
import 'package:schedule/features/home/repositories/home_repository.dart';

class HomeRepositoryImpl extends IHomeRepository {
  final IHomeRemoteDS _remoteDS;

  HomeRepositoryImpl({
    required IHomeRemoteDS remoteDS,
  }) : _remoteDS = remoteDS;

  @override
  Future<Result<List<ScheduleDTO>>> getAllSchedules(String universityCode) async {
    final Result<List<ScheduleDTO>> result = await _remoteDS.getAllSchedules(universityCode);

    return result;
  }
}
