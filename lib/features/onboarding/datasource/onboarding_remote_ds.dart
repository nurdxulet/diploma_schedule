import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:l/l.dart';
import 'package:schedule/core/error/network_exception.dart';
import 'package:schedule/core/network/layers/network_executer.dart';
import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/onboarding/datasource/onboarding_api.dart';
import 'package:schedule/features/search/models/university_dto.dart';

abstract class IOnboardingRemoteDS {
  Future<Result<UniversityDTO>> checkUniversity(String universityCode);
}

class OnboardingRemoteDSImpl implements IOnboardingRemoteDS {
  final NetworkExecuter client;

  OnboardingRemoteDSImpl({
    required this.client,
  });

  @override
  Future<Result<UniversityDTO>> checkUniversity(String universityCode) async {
    try {
      final Result<Map<String, dynamic>?> result = await client.produce(
        route: OnboardingApi.checkUniversity(universityCode),
      );

      return result.when(
        success: (Map<String, dynamic>? response) {
          //   if (response == null) {
          //     return const Result.failure(
          //       NetworkException.type(error: 'Incorrect data parsing!'),
          //     );
          //   }

          //   final UniversityDTO news =
          //       (response).map((e) => UniversityDTO.fromJson(e as Map<String, dynamic>)).toList();

          //   return Result<UniversityDTO>.success(news);
          // },
          if (response == null) {
            return const Result.failure(
              NetworkException.type(error: 'Incorrect data parsing!'),
            );
          }

          final UniversityDTO uninversity = UniversityDTO.fromJson(response);

          return Result<UniversityDTO>.success(uninversity);
        },
        failure: (NetworkException exception) => Result<UniversityDTO>.failure(exception),
      );
    } catch (e) {
      if (kDebugMode) {
        l.d('login => ${NetworkException.type(error: e.toString())}');
      }
      return Result<UniversityDTO>.failure(
        NetworkException.type(error: e.toString()),
      );
    }
  }
}
