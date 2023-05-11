import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';
import 'package:schedule/features/search/datasource/search_remote_ds.dart';
import 'package:schedule/features/search/repository/search_repository.dart';

class SearchRepositoryImpl extends ISearchRepository {
  final ISearchRemoteDS _remoteDS;

  SearchRepositoryImpl({
    required ISearchRemoteDS remoteDS,
  }) : _remoteDS = remoteDS;

  @override
  Future<Result<List<ScheduleDTO>>> getGroupSchedule(String id) async {
    final Result<List<ScheduleDTO>> result = await _remoteDS.getGroupSchedule(id);

    return result;
  }

  @override
  Future<Result<List<ScheduleDTO>>> getSubjectSchedule(String id) async {
    final Result<List<ScheduleDTO>> result = await _remoteDS.getGroupSchedule(id);

    return result;
  }

  @override
  Future<Result<List<ScheduleDTO>>> getTeacherSchedule(String id) async {
    final Result<List<ScheduleDTO>> result = await _remoteDS.getGroupSchedule(id);

    return result;
  }
}
