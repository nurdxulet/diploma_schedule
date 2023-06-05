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
  const factory SearchApi.getAllGroups(String universityCode, String educationalProgramId) = _GetAllGroups;

  const factory SearchApi.getAllTeachers(String universityCode) = _GetAllTeachers;

  const factory SearchApi.getAllRooms(String universityCode) = _GetAllRooms;

  const factory SearchApi.getSchedules(String universityCode, String searchType, String searchId) = _GetSchedules;

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
        getAllGroups: (universityCode, educationalProgramId) => 'educational-programs/$educationalProgramId/groups',
        getAllTeachers: (universityCode) => 'teachers/extended',
        getAllRooms: (universityCode) => 'rooms',
        getSchedules: (universityCode, searchType, searchId) => 'schedules/extended',
      );

  /// Параметры запросов
  @override
  Map<String, dynamic>? get queryParameters => whenOrNull(
      getAllGroups: (universityCode, educationalProgramId) => {
            'universityCode': universityCode,
          },
      getAllTeachers: (universityCode) => {
            'universityCode': universityCode,
          },
      getAllRooms: (universityCode) => {
            'universityCode': universityCode,
          },
      getSchedules: (universityCode, searchType, searchId) => {
            'searchId': searchId,
            'searchType': searchType,
            'universityCode': universityCode,
          },);
}
