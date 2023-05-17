import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:l/l.dart';
import 'package:schedule/core/error/network_exception.dart';
import 'package:schedule/core/network/layers/network_executer.dart';
import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/datasource/home_api.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';
import 'package:schedule/features/onboarding/datasource/onboarding_api.dart';
import 'package:schedule/features/search/models/university_dto.dart';

abstract class IHomeRemoteDS {
  Future<Result<List<ScheduleDTO>>> getAllSchedules(String universityCode);
}

class HomeRemoteDSDSImpl implements IHomeRemoteDS {
  final NetworkExecuter client;

  HomeRemoteDSDSImpl({
    required this.client,
  });

  @override
  Future<Result<List<ScheduleDTO>>> getAllSchedules(String universityCode) async {
    try {
      final Result<List?> result = await client.produce(
        route: HomeApi.getAllSchedules(universityCode),
      );

      return result.when(
        success: (List? response) {
          // if (response) {
          //   return const Result.failure(
          //     NetworkException.type(error: 'Incorrect data parsing!'),
          //   );
          // }

          final List<ScheduleDTO> schedules =
              (response ?? []).map((e) => ScheduleDTO.fromJson(e as Map<String, dynamic>)).toList();

          return Result<List<ScheduleDTO>>.success(schedules);
        },
        failure: (NetworkException exception) => Result<List<ScheduleDTO>>.failure(exception),
      );
    } catch (e) {
      if (kDebugMode) {
        l.d('login => ${NetworkException.type(error: e.toString())}');
      }
      return Result<List<ScheduleDTO>>.failure(
        NetworkException.type(error: e.toString()),
      );
    }
  }
}
