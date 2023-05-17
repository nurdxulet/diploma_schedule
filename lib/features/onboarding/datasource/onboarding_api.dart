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

  /// Здесь описываются body для всех запросов
  /// По умолчанию null
  @override
  dynamic get body => whenOrNull();

  /// Используемые методы запросов, по умолчанию 'GET'
  @override
  String get method => maybeWhen(
        orElse: () => 'GET',
      );

  /// Пути всех запросов (после [kBaseUrl])
  @override
  String get path => when(
        checkUniversity: (String universityCode) => 'universities/code',
      );

  /// Параметры запросов
  @override
  Map<String, dynamic>? get queryParameters => whenOrNull(
        checkUniversity: (String universityCode) => {
          'code': universityCode,
        },
      );
}
