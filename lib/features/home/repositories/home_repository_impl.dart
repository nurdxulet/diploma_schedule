import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/datasource/home_remote_ds.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/home/repositories/home_repository.dart';
import 'package:schedule/features/onboarding/database/onboarding_dao.dart';
import 'package:schedule/features/search/models/group_dto.dart';

class HomeRepositoryImpl extends IHomeRepository {
  final OnboardingDao _onboardingDao;
  final IHomeRemoteDS _remoteDS;

  HomeRepositoryImpl({
    required IHomeRemoteDS remoteDS,
    required OnboardingDao onboardingDao,
  })  : _remoteDS = remoteDS,
        _onboardingDao = onboardingDao;

  @override
  Future<Result<List<ScheduleDTO>>> getAllSchedules(
    String universityCode,
    String educationalProgramId,
    String searchType,
  ) async {
    final Result<List<ScheduleDTO>> result =
        await _remoteDS.getAllSchedules(universityCode, educationalProgramId, searchType);

    return result;
  }

  @override
  Future<Result<List<ScheduleDTO>>> getMySchedules(
    String universityCode,
    List<GroupDTO> groups,
    String searchType,
  ) async {
    final Result<List<ScheduleDTO>> result = await _remoteDS.getMySchedules(universityCode, groups, searchType);

    return result;
  }

  @override
  Future<bool> removeAllFromShared() async {
    await _onboardingDao.university.remove();
    await _onboardingDao.educationalProgram.remove();
    await _onboardingDao.course.remove();
    await _onboardingDao.groups.remove();
    if (_onboardingDao.university.value == null &&
        _onboardingDao.educationalProgram.value == null &&
        _onboardingDao.course.value == null &&
        _onboardingDao.groups.value == null) {
      return true;
    } else {
      return false;
    }
  }
}
