import 'dart:convert';

import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/auth/database/auth_dao.dart';
import 'package:schedule/features/onboarding/datasource/onboarding_remote_ds.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/university_dto.dart';

class OnboardingRepositoryImpl extends IOnboardingRepository {
  final IOnboardingRemoteDS _remoteDS;
  final IAuthDao _authDao;

  OnboardingRepositoryImpl({
    required IOnboardingRemoteDS remoteDS,
    required IAuthDao authDao,
  })  : _remoteDS = remoteDS,
        _authDao = authDao;

  @override
  Future<Result<UniversityDTO>> checkUniversity(String universityCode) async {
    final Result<UniversityDTO> result = await _remoteDS.checkUniversity(universityCode);

    result.whenOrNull(
      success: (university) {
        _authDao.user.setValue(jsonEncode(university.toJson()));
      },
    );

    return result;
  }
}
