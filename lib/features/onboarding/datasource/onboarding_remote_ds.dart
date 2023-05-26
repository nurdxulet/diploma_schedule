import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:l/l.dart';
import 'package:schedule/core/error/network_exception.dart';
import 'package:schedule/core/network/layers/network_executer.dart';
import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/onboarding/datasource/onboarding_api.dart';
import 'package:schedule/features/onboarding/models/course_dto.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';

abstract class IOnboardingRemoteDS {
  Future<Result<UniversityDTO>> checkUniversity(String universityCode);
  Future<Result<List<EduProgramDTO>>> getEduPrograms(String universityCode);
  Future<Result<List<CourseDTO>>> getEduProgramCourses(String universityCode, String educationalProgramId);
  Future<Result<List<GroupDTO>>> getGroups(String universityCode, String educationalProgramId, int courseNumber);
}

class OnboardingRemoteDSImpl implements IOnboardingRemoteDS {
  final NetworkExecuter client;

  OnboardingRemoteDSImpl({
    required this.client,
  });

  @override
  Future<Result<UniversityDTO>> checkUniversity(String universityCode) async {
    try {
      final Result<Map<String, dynamic>?> result = await client.produce(
        route: OnboardingApi.checkUniversity(universityCode),
      );

      return result.when(
        success: (Map<String, dynamic>? response) {
          if (response == null) {
            return const Result.failure(
              NetworkException.type(error: 'Incorrect data parsing!'),
            );
          }

          final UniversityDTO uninversity = UniversityDTO.fromJson(response);

          return Result<UniversityDTO>.success(uninversity);
        },
        failure: (NetworkException exception) => Result<UniversityDTO>.failure(exception),
      );
    } catch (e) {
      if (kDebugMode) {
        l.d('login => ${NetworkException.type(error: e.toString())}');
      }
      return Result<UniversityDTO>.failure(
        NetworkException.type(error: e.toString()),
      );
    }
  }

  @override
  Future<Result<List<EduProgramDTO>>> getEduPrograms(String universityCode) async {
    try {
      final Result<List?> result = await client.produce(
        route: OnboardingApi.getEduPrograms(universityCode),
      );

      return result.when(
        success: (List? response) {
          final List<EduProgramDTO> eduPrograms =
              (response ?? []).map((e) => EduProgramDTO.fromJson(e as Map<String, dynamic>)).toList();

          return Result<List<EduProgramDTO>>.success(eduPrograms);
        },
        failure: (NetworkException exception) => Result<List<EduProgramDTO>>.failure(exception),
      );
    } catch (e) {
      if (kDebugMode) {
        l.d('login => ${NetworkException.type(error: e.toString())}');
      }
      return Result<List<EduProgramDTO>>.failure(
        NetworkException.type(error: e.toString()),
      );
    }
  }

  @override
  Future<Result<List<CourseDTO>>> getEduProgramCourses(String universityCode, String educationalProgramId) async {
    try {
      final Result<List?> result = await client.produce(
        route: OnboardingApi.getEduProgramCourses(universityCode, educationalProgramId),
      );

      return result.when(
        success: (List? response) {
          final List<CourseDTO> eduPrograms =
              (response ?? []).map((e) => CourseDTO.fromJson(e as Map<String, dynamic>)).toList();

          return Result<List<CourseDTO>>.success(eduPrograms);
        },
        failure: (NetworkException exception) => Result<List<CourseDTO>>.failure(exception),
      );
    } catch (e) {
      if (kDebugMode) {
        l.d('login => ${NetworkException.type(error: e.toString())}');
      }
      return Result<List<CourseDTO>>.failure(
        NetworkException.type(error: e.toString()),
      );
    }
  }

  @override
  Future<Result<List<GroupDTO>>> getGroups(String universityCode, String educationalProgramId, int courseNumber) async {
    try {
      final Result<List?> result = await client.produce(
        route: OnboardingApi.getGroups(universityCode, educationalProgramId, courseNumber),
      );

      return result.when(
        success: (List? response) {
          final List<GroupDTO> groups =
              (response ?? []).map((e) => GroupDTO.fromJson(e as Map<String, dynamic>)).toList();

          return Result<List<GroupDTO>>.success(groups);
        },
        failure: (NetworkException exception) => Result<List<GroupDTO>>.failure(exception),
      );
    } catch (e) {
      if (kDebugMode) {
        l.d('login => ${NetworkException.type(error: e.toString())}');
      }
      return Result<List<GroupDTO>>.failure(
        NetworkException.type(error: e.toString()),
      );
    }
  }
}
