// ignore_for_file: avoid-dynamic

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/core/network/interfaces/base_client_generator.dart';
part 'onboarding_api.freezed.dart';

@freezed
class OnboardingApi extends BaseClientGenerator with _$OnboardingApi {
  const OnboardingApi._() : super();

  ///
  /// Запрос для проверки кода университета и получения информации об университете
  ///
  const factory OnboardingApi.checkUniversity(String universityCode) = _CheckUniversity;
  const factory OnboardingApi.getEduPrograms(String universityCode) = _GetEduPrograms;
  const factory OnboardingApi.getEduProgramCourses(String universityCode, String educationalProgramId) =
      _GetEduProgramCourses;
  const factory OnboardingApi.getGroups(String universityCode) = _GetGroups;
  const factory OnboardingApi.turnOnNotifications(String deviceToken, List<String> payload) = _TurnOnNotifications;

  /// Здесь описываются body для всех запросов
  /// По умолчанию null
  @override
  dynamic get body => whenOrNull(
        turnOnNotifications: (deviceToken, payload) => {
          "deviceToken": deviceToken,
          "groups": payload,
        },
      );

  /// Используемые методы запросов, по умолчанию 'GET'
  @override
  String get method => maybeWhen(
        orElse: () => 'GET',
      );

  /// Пути всех запросов (после [kBaseUrl])
  @override
  String get path => when(
        checkUniversity: (String universityCode) => 'universities/code',
        getEduPrograms: (String universityCode) => 'educational-programs',
        getEduProgramCourses: (String universityCode, String educationalProgramId) =>
            'educational-programs/$educationalProgramId/courses',
        getGroups: (String universityCode) => 'groups',
        turnOnNotifications: (deviceToken, payload) => 'notifications',
      );

  /// Параметры запросов
  @override
  Map<String, dynamic>? get queryParameters => whenOrNull(
        checkUniversity: (String universityCode) => {
          'code': universityCode,
        },
        getEduPrograms: (String universityCode) => {
          'universityCode': universityCode,
        },
        getEduProgramCourses: (String universityCode, String educationalProgramId) => {
          'universityCode': universityCode,
        },
        getGroups: (String universityCode) => {
          'universityCode': universityCode,
        },
      );
}
