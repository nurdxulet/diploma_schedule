import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException implements Exception {
  const NetworkException._() : super();

  /// Вызывается если случился [DioError]
  const factory NetworkException.request({required DioError error}) = _ResponseError;

  /// Вызывается при общих ошибках
  const factory NetworkException.type({String? error}) = _DecodingError;

  /// Вызывается если нету доступа в интернет
  const factory NetworkException.connectivity({@Default('Нет доступа к интернету!') String message}) = _Connectivity;

  /// Вызывается при тайм ауте запроса
  const factory NetworkException.timeOut({@Default('Время запроса истекло!') String message}) = _TimeOut;

  /// Сообщение ошибки
  String? get msg => when<String?>(
        type: (String? error) => error,
        connectivity: (String message) => message,
        timeOut: (String message) => message,
        request: _parseDioError,
      );

  /// Возвращаем тексты в зависимости от статус кода
  String _parseDioError(DioError error) {
    switch (error.response?.statusCode) {
      case HttpStatus.unauthorized:
        return 'Не авторизован. Пожалуйста, войдите в систему еще раз!';
      case HttpStatus.notFound:
        return 'Контент который вы ищите, не найден!';
      case HttpStatus.internalServerError:
        return 'Что-то не так с нашими серверами, проблема будет решена в ближайшее время!';
      default:
        return (error.response?.data as Map<String, dynamic>)['message'] as String;
    }
  }
}
