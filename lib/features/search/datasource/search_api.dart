// ignore_for_file: avoid-dynamic

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/core/network/interfaces/base_client_generator.dart';
part 'search_api.freezed.dart';

@freezed
class SearchApi extends BaseClientGenerator with _$SearchApi {
  const SearchApi._() : super();

  /// Запрос для авторизации

  const factory SearchApi.getGroupSchedule(String id) = _GetGroupSchedule;

  const factory SearchApi.getSubjectSchedule(String id) = _GetSubjectSchedule;

  const factory SearchApi.getTeacherSchedule(String id) = _GetTeacherSchedule;

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
        getGroupSchedule: (String id) => 'Schedulez/findAllExtended_2',
        getSubjectSchedule: (String id) => 'Schedulez/findAllExtended_2',
        getTeacherSchedule: (String id) => 'Schedulez/findAllExtended_2',
      );

  /// Параметры запросов
  @override
  Map<String, dynamic>? get queryParameters => whenOrNull(
        getGroupSchedule: (String id) => {
          'id': id,
        },
        getSubjectSchedule: (String id) => {
          'id': id,
        },
        getTeacherSchedule: (String id) => {
          'id': id,
        },
      );
}
