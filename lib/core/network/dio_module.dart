// ignore_for_file: avoid_classes_with_only_static_members, avoid_redundant_argument_values

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:schedule/core/enum/environment.dart';
import 'package:schedule/features/auth/database/auth_dao.dart';
import 'package:schedule/features/auth/model/user_dto.dart';
import 'package:schedule/settings/database/settings_dao.dart';

/// Creates new `Dio` instance
@sealed
class DioModule {
  DioModule._();

  /// Конфигурация Dio
  static Dio configureDio({
    required AuthDao authDao,
    required PackageInfo packageInfo,
    required ISettingsDao settings,
  }
      // IUserRepository userRepository,
      ) {
    final dio = Dio();
    dio
      ..options.baseUrl = kBaseUrl
      ..options.headers.addAll({
        'accept': 'application/json',
        'version': packageInfo.version,
        // if (localeValue != null) 'Content-language': localeValue,
        // if (currentCityValue != null)
        //   'City': CityDTO.fromJson(
        //     jsonDecode(currentCityValue) as Map<String, dynamic>,
        //   ).id,
      })
      ..interceptors.addAll([
        // LogOutInterceptor(userRepository),
        _AuthDioInterceptor(authDao),
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          // responseBody: false,
          responseHeader: true,
          compact: false,
        ),
      ]);

    return dio;
  }
}

class _AuthDioInterceptor extends Interceptor {
  final AuthDao _authDao;
  _AuthDioInterceptor(this._authDao);

  // Dio dio = Dio(BaseOptions(baseUrl: SERVER_));

  // @override
  // void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
  //   final String? userStr = _authDao.user.value;
  //   if (userStr != null) {
  //     final UserDTO user = UserDTO.fromJson(jsonDecode(userStr) as Map<String, dynamic>);
  //     if (user.token != null && user.token!.accessToken != null) {
  //       options.headers['Authorization'] = 'Bearer ${user.token!.accessToken}';
  //     }
  //   }

  //   options.headers['Accept'] = "application/json";
  //   // options.headers['Content-Language'] = locale.replaceAll('kk', 'kz');
  //   super.onRequest(options, handler);
  // }

  @override
  Future onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    // sl<NotAuthLogic>().statusSubject.add(err.response?.statusCode ?? 0);
    if ((err.response?.statusCode ?? 0) == HttpStatus.unauthorized) {
      // sl<NotAuthLogic>().statusSubject.add(401);
    } else if ((err.response?.statusCode ?? 0) == HttpStatus.unprocessableEntity) {
    } else if ((err.response?.statusCode ?? 0) == HttpStatus.notFound) {}
    return super.onError(err, handler);
  }
}
