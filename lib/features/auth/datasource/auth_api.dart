// ignore_for_file: avoid-dynamic
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/core/network/interfaces/base_client_generator.dart';

part 'auth_api.freezed.dart';

@freezed
class AuthApi extends BaseClientGenerator with _$AuthApi {
  const AuthApi._() : super();

  /// Запрос для авторизации
  const factory AuthApi.login({
    required String universityCode,
  }) = _Login;

  const factory AuthApi.sendCode({
    required String email,
  }) = _SendCode;

  const factory AuthApi.checkCode({
    required String email,
    required String code,
  }) = _CheckCode;

  const factory AuthApi.resetPassword({
    required String email,
    required String password,
  }) = _ResetPassword;

  const factory AuthApi.profile() = _Profile;

  const factory AuthApi.logOut() = _LogOut;

  const factory AuthApi.registration({
    required String email,
    required String password,
    required String phone,
    required String birthday,
    required String name,
  }) = _Registration;

  const factory AuthApi.editProfile({
    required FormData formData,
  }) = _EditProfile;

  /// Здесь описываются body для всех запросов
  /// По умолчанию null
  @override
  dynamic get body => whenOrNull(
        login: (universityCode) => <String, dynamic>{
          'universityCode': universityCode,
        },
        registration: (email, password, phone, birthday, name) => <String, dynamic>{
          'email': email,
          'password': password,
          'birthday': birthday,
          'phone': phone,
          'name': name,
        },
        editProfile: (formData) => formData,
      );

  /// Используемые методы запросов, по умолчанию 'GET'
  @override
  String get method => maybeWhen(
        orElse: () => 'GET',
        login: (universityCode) => 'POST',
        sendCode: (email) => 'GET',
        checkCode: (email, code) => 'GET',
        resetPassword: (email, password) => 'GET',
        profile: () => 'GET',
        registration: (email, password, phone, birthday, name) => 'POST',
        editProfile: (formData) => 'POST',
      );

  /// Пути всех запросов (после [kBaseUrl])
  @override
  String get path => when(
        login: (universityCode) => 'universities/code',
        sendCode: (email) => '/api/v1/send/code',
        checkCode: (email, code) => '/api/user/check/code',
        resetPassword: (email, password) => '/api/user/reset/password',
        profile: () => '/api/user/profile',
        logOut: () => '/api/user/logout',
        registration: (email, password, phone, birthday, name) => '/api/v1/register',
        editProfile: (formData) => '/api/user/edit',
      );

  /// Параметры запросов
  @override
  Map<String, dynamic>? get queryParameters => whenOrNull(
        sendCode: (email) => {'email': email},
        checkCode: (email, code) => {'code': code, 'email': email},
        resetPassword: (email, password) => {'password': password, 'email': email},
      );
}
