import 'package:flutter/foundation.dart';
import 'package:l/l.dart';
import 'package:schedule/core/error/network_exception.dart';
import 'package:schedule/core/network/layers/network_executer.dart';
import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/auth/datasource/auth_api.dart';
import 'package:schedule/features/auth/model/user_dto.dart';

abstract class IAuthRemoteDS {
  Future<Result<UserDTO>> login({
    required String phone,
    required String password,
  });

  Future<Result<UserDTO>> getProfile();
}

class AuthRemoteDSImpl implements IAuthRemoteDS {
  final NetworkExecuter client;

  AuthRemoteDSImpl({
    required this.client,
  });

  @override
  Future<Result<UserDTO>> login({
    required String phone,
    required String password,
  }) async {
    try {
      final Result<Map?> result = await client.produce(
        route: AuthApi.login(phone: phone, password: password),
      );

      return result.when(
        success: (Map? response) {
          if (response == null) {
            return const Result.failure(NetworkException.type(error: 'Incorrect data parsing!'));
          }

          final UserDTO user = UserDTO.fromJson(response as Map<String, dynamic>);

          return Result<UserDTO>.success(user);
        },
        failure: (NetworkException exception) => Result<UserDTO>.failure(exception),
      );
    } catch (e) {
      if (kDebugMode) {
        l.d('login => ${NetworkException.type(error: e.toString())}');
      }
      return Result<UserDTO>.failure(NetworkException.type(error: e.toString()));
    }
  }

  @override
  Future<Result<UserDTO>> getProfile() async {
    try {
      final Result<Map<String, dynamic>?> result = await client.produce(
        route: const AuthApi.profile(),
      );

      return result.when(
        success: (Map<String, dynamic>? response) {
          if (response == null) {
            return const Result.failure(NetworkException.type(error: 'Incorrect data parsing!'));
          }

          final UserDTO user = UserDTO.fromJson(response);

          return Result<UserDTO>.success(user);
        },
        failure: (NetworkException exception) => Result<UserDTO>.failure(exception),
      );
    } catch (e) {
      if (kDebugMode) {
        l.d('getProfile => ${NetworkException.type(error: e.toString())}');
      }
      return Result<UserDTO>.failure(NetworkException.type(error: e.toString()));
    }
  }
}
