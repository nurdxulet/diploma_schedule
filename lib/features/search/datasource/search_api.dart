// ignore_for_file: avoid-dynamic

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/core/network/interfaces/base_client_generator.dart';
part 'search_api.freezed.dart';

@freezed
class SearchApi extends BaseClientGenerator with _$SearchApi {
  const SearchApi._() : super();

  ///
  /// Запросы для получения списка сущностей (университетов, груп, учителей и т.д.)
  ///
  const factory SearchApi.getAllGroups(String universityCode) = _GetAllGroups;

  // const factory SearchApi.getAllAuditories(String universityCode) = _GetAllGroups;

  const factory SearchApi.getAllTeachers(String universityCode) = _GetAllTeachers;

  ///
  /// Запросы для получения расписаний по айди
  ///
  // const factory SearchApi.getGroupSchedule(String universityCode) = _GetGroupSchedule;

  // const factory SearchApi.getTeacherSchedule(String universityCode) = _GetTeacherSchedule;

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
        getAllGroups: (universityCode) => 'groups',
        getAllTeachers: (universityCode) => 'teachers/extended',
      );

  /// Параметры запросов
  @override
  Map<String, dynamic>? get queryParameters => whenOrNull(
        getAllGroups: (universityCoded) => {
          'universityCode': universityCode,
        },
        getAllTeachers: (iuniversityCoded) => {
          'universityCode': universityCode,
        },
      );
}
