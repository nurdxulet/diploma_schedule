import 'dart:convert';
import 'dart:developer';

import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/onboarding/database/onboarding_dao.dart';
import 'package:schedule/features/onboarding/datasource/onboarding_remote_ds.dart';
import 'package:schedule/features/onboarding/models/course_dto.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';

class OnboardingRepositoryImpl extends IOnboardingRepository {
  final IOnboardingRemoteDS _remoteDS;
  final IOnboardingDao _onboardingDao;

  // @override
  // bool get isAuthenticated => _onboardingDao.university.value != null;

  OnboardingRepositoryImpl({
    required IOnboardingRemoteDS remoteDS,
    required IOnboardingDao onboardingDao,
  })  : _remoteDS = remoteDS,
        _onboardingDao = onboardingDao;

  @override
  bool get isAuthenticated =>
      _onboardingDao.university.value != null &&
      // _onboardingDao.educationalProgram.value != null &&
      // _onboardingDao.course.value != null &&
      _onboardingDao.groups.value != null;

  @override
  bool getOnboarding() => _onboardingDao.onboarding.value ?? false;

  @override
  Future<void> setOnboarding({required bool onboarding}) async => _onboardingDao.onboarding.setValue(onboarding);

  @override
  Future<Result<UniversityDTO>> checkUniversity(String universityCode) async {
    final Result<UniversityDTO> result = await _remoteDS.checkUniversity(universityCode);

    result.whenOrNull(
      success: (university) {
        _onboardingDao.university.setValue(jsonEncode(university.toJson()));
      },
    );

    return result;
  }

  @override
  Future<UniversityDTO?> getUniversityFromCache() async {
    try {
      if (_onboardingDao.university.value != null) {
        final UniversityDTO university =
            UniversityDTO.fromJson(jsonDecode(_onboardingDao.university.value!) as Map<String, dynamic>);
        return university;
      }
    } on Exception catch (e) {
      log(e.toString(), name: 'getUniversityFromCache()');
    }
    return null;
  }

  @override
  Future<EduProgramDTO?> getEduProgramFromCache() async {
    try {
      if (_onboardingDao.university.value != null) {
        final EduProgramDTO eduProgram =
            EduProgramDTO.fromJson(jsonDecode(_onboardingDao.educationalProgram.value!) as Map<String, dynamic>);
        return eduProgram;
      }
    } on Exception catch (e) {
      log(e.toString(), name: 'getUniversityFromCache()');
    }
    return null;
  }

  @override
  Future<CourseDTO?> getCourseFromCache() async {
    try {
      if (_onboardingDao.university.value != null) {
        final CourseDTO course = CourseDTO.fromJson(jsonDecode(_onboardingDao.course.value!) as Map<String, dynamic>);
        return course;
      }
    } on Exception catch (e) {
      log(e.toString(), name: 'getCourseFromCache()');
    }
    return null;
  }

  @override
  Future<List<GroupDTO>> getGroupsFromCache() async {
    try {
      if (_onboardingDao.university.value != null) {
        final List<String> strs = _onboardingDao.groups.value ?? [];
        final List<GroupDTO> groups =
            strs.map((e) => GroupDTO.fromJson(jsonDecode(e) as Map<String, dynamic>)).toList();
        // final GroupDTO group = GroupDTO.fromJson(jsonDecode(_onboardingDao.groups.value!) as Map<String, dynamic>);
        return groups;
      }
    } on Exception catch (e) {
      log(e.toString(), name: 'getUniversityFromCache()');
    }
    return [];
  }

  @override
  Future<Result<List<EduProgramDTO>>> getEduPrograms(String universityCode) async {
    final Result<List<EduProgramDTO>> result = await _remoteDS.getEduPrograms(universityCode);

    return result;
  }

  @override
  Future<Result<List<CourseDTO>>> getEduProgramCourses(String universityCode, String educationalProgramId) async {
    final Result<List<CourseDTO>> result = await _remoteDS.getEduProgramCourses(universityCode, educationalProgramId);
    return result;
  }

  @override
  Future<Result<List<GroupDTO>>> getGroups(
    String universityCode,
    //  String educationalProgramId,
    // int courseNumber,
  ) async {
    final Result<List<GroupDTO>> result = await _remoteDS.getGroups(
      universityCode,
      //  educationalProgramId,
      // courseNumber,
    );
    return result;
  }

  @override
  Future<String> setUniInfo(List<GroupDTO> groups) async {
    // _onboardingDao.educationalProgram.setValue(jsonEncode(eduProgram.toJson()));
    // _onboardingDao.course.setValue(jsonEncode(course.toJson()));
    _onboardingDao.groups.setValue(groups.map((e) => jsonEncode(e.toJson())).toList());
    return 'setUniInfo success';
  }

  @override
  Future<Result<Map<String, dynamic>>> turnOnNotifications(String deviceToken, List<GroupDTO> groups) async {
    final Result<Map<String, dynamic>> result = await _remoteDS.turnOnNotifications(deviceToken, groups);
    return result;
  }
}
