import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/datasource/home_remote_ds.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/home/repositories/home_repository.dart';
import 'package:schedule/features/onboarding/database/onboarding_dao.dart';

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

  Future<Result<List<ScheduleDTO>>> getMySchedules(
    String universityCode,
    String educationalProgramId,
    String searchType,
  ) async {
    final Result<List<ScheduleDTO>> result =
        await _remoteDS.getMySchedules(universityCode, educationalProgramId, searchType);

    return result;
  }

  @override
  Future<bool> removeAllFromShared() async {
    _onboardingDao.university.remove();
    _onboardingDao.educationalProgram.remove();
    _onboardingDao.course.remove();
    _onboardingDao.group.remove();
    if (_onboardingDao.university.value == null &&
        _onboardingDao.educationalProgram.value == null &&
        _onboardingDao.course.value == null &&
        _onboardingDao.group.value == null) {
      return true;
    } else {
      return false;
    }
  }
}
