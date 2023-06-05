// ignore_for_file: avoid-dynamic

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/core/network/interfaces/base_client_generator.dart';
part 'home_api.freezed.dart';

@freezed
class HomeApi extends BaseClientGenerator with _$HomeApi {
  const HomeApi._() : super();

  ///
  /// Запрос для проверки кода университета и получения информации об университете
  ///
  const factory HomeApi.getAllSchedules(String universityCode, String searchId, String searchType) = _GetAllSchedules;

  const factory HomeApi.getMySchedules(
    List<Map<String, dynamic>> payload,
    String universityCode,
  ) = _GetMySchedules;

  /// Здесь описываются body для всех запросов
  /// По умолчанию null
  @override
  dynamic get body => whenOrNull(
        getMySchedules: (payload, universityCode) => payload,
      );

  /// Используемые методы запросов, по умолчанию 'GET'
  @override
  String get method => maybeWhen(
        orElse: () => 'GET',
        getMySchedules: (payload, universityCode) => "POST",
      );

  /// Пути всех запросов (после [kBaseUrl])
  @override
  String get path => when(
        getAllSchedules: (universityCode, searchType, searchId) => 'schedules/extended',
        getMySchedules: (payload, universityCode) => 'schedules/extended',
      );

  /// Параметры запросов
  @override
  Map<String, dynamic>? get queryParameters => whenOrNull(
        getAllSchedules: (universityCode, searchType, searchId) => {
          'searchId': searchId,
          'searchType': searchType,
          'universityCode': universityCode,
        },
        getMySchedules: (payload, universityCode) => {
          'universityCode': universityCode,
        },
      );
}
