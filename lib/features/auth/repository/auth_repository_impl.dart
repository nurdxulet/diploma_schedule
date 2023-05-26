import 'dart:convert';
import 'dart:developer';

import 'package:schedule/core/network/layers/network_executer.dart';
import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/auth/database/auth_dao.dart';
import 'package:schedule/features/auth/datasource/auth_remote_ds.dart';
import 'package:schedule/features/auth/model/user_dto.dart';
import 'package:schedule/features/auth/repository/auth_repository.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';

class AuthRepositoryImpl extends IAuthRepository {
  final IAuthRemoteDS _remoteDS;
  final IAuthDao _authDao;

  @override
  bool get isAuthenticated => _authDao.university.value != null;

  AuthRepositoryImpl({
    required IAuthRemoteDS remoteDS,
    required IAuthDao authDao,
    required NetworkExecuter client,
  })  : _remoteDS = remoteDS,
        _authDao = authDao;

  @override
  Future<Result<UniversityDTO>> login({
    required String universityCode,
  }) async {
    final Result<UniversityDTO> result = await _remoteDS.login(
      universityCode: universityCode,
    );

    result.whenOrNull(
      success: (user) {
        _authDao.university.setValue(jsonEncode(user.toJson()));
      },
    );

    return result;
  }

  @override
  bool getOnboarding() => _authDao.onboarding.value ?? false;

  @override
  Future<void> setOnboarding({required bool onboarding}) async => _authDao.onboarding.setValue(onboarding);

  @override
  Future<UniversityDTO?> getUniversityFromCache() async {
    try {
      if (_authDao.university.value != null) {
        final UniversityDTO university =
            UniversityDTO.fromJson(jsonDecode(_authDao.university.value!) as Map<String, dynamic>);
        return university;
      }
    } on Exception catch (e) {
      log(e.toString(), name: 'getUniversityFromCache()');
    }
    return null;
  }

  @override
  Future<EduProgramDTO?> getEduProgramFromChache() async {
    try {
      if (_authDao.university.value != null) {
        final EduProgramDTO eduProgram =
            EduProgramDTO.fromJson(jsonDecode(_authDao.university.value!) as Map<String, dynamic>);
        return eduProgram;
      }
    } on Exception catch (e) {
      log(e.toString(), name: 'getUniversityFromCache()');
    }
    return null;
  }

  @override
  Future<bool> clearUser() async => _authDao.university.remove();

  @override
  Future<Result<UserDTO>> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }
}
