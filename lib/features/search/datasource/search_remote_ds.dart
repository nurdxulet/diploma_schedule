import 'package:flutter/foundation.dart';
import 'package:l/l.dart';
import 'package:schedule/core/error/network_exception.dart';
import 'package:schedule/core/network/layers/network_executer.dart';
import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';
import 'package:schedule/features/search/datasource/search_api.dart';

abstract class ISearchRemoteDS {
  Future<Result<List<ScheduleDTO>>> getGroupSchedule(String id);

  Future<Result<List<ScheduleDTO>>> getSubjectSchedule(String id);

  Future<Result<List<ScheduleDTO>>> getTeacherSchedule(String id);
}

class SearchRemoteDSImpl implements ISearchRemoteDS {
  final NetworkExecuter client;

  SearchRemoteDSImpl({
    required this.client,
  });

  // @override
  // Future<Result<List<QuestionDTO>>> getTest() async {
  //   try {
  //     final Result<Map<String, dynamic>?> result = await client.produce(
  //       route: const TestApi.getTest(),
  //     );

  //     return result.when(
  //       success: (Map<String, dynamic>? response) {
  //         if (response == null) {
  //           return const Result.failure(
  //             NetworkException.type(error: 'Incorrect data parsing!'),
  //           );
  //         }

  //         final List<QuestionDTO> questions =
  //             (response as List).map((e) => QuestionDTO.fromJson(e as Map<String, dynamic>)).toList();

  //         return Result<List<QuestionDTO>>.success(questions);
  //       },
  //       failure: (NetworkException exception) => Result<List<QuestionDTO>>.failure(exception),
  //     );
  //   } catch (e) {
  //     if (kDebugMode) {
  //       l.d('login => ${NetworkException.type(error: e.toString())}');
  //     }
  //     return Result<List<QuestionDTO>>.failure(
  //       NetworkException.type(error: e.toString()),
  //     );
  //   }
  // }

  @override
  Future<Result<List<ScheduleDTO>>> getGroupSchedule(String id) async {
    try {
      final Result<List?> result = await client.produce(
        route: SearchApi.getGroupSchedule(id),
      );

      return result.when(
        success: (List? response) {
          // if (response) {
          //   return const Result.failure(
          //     NetworkException.type(error: 'Incorrect data parsing!'),
          //   );
          // }

          final List<ScheduleDTO> questions = (response ?? [])
              .map((e) => ScheduleDTO.fromJson(e as Map<String, dynamic>))
              .toList();

          return Result<List<ScheduleDTO>>.success(questions);
        },
        failure: (NetworkException exception) =>
            Result<List<ScheduleDTO>>.failure(exception),
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

  @override
  Future<Result<List<ScheduleDTO>>> getSubjectSchedule(String id) async {
    try {
      final Result<List?> result = await client.produce(
        route: SearchApi.getSubjectSchedule(id),
      );

      return result.when(
        success: (List? response) {
          // if (response) {
          //   return const Result.failure(
          //     NetworkException.type(error: 'Incorrect data parsing!'),
          //   );
          // }

          final List<ScheduleDTO> questions = (response ?? [])
              .map((e) => ScheduleDTO.fromJson(e as Map<String, dynamic>))
              .toList();

          return Result<List<ScheduleDTO>>.success(questions);
        },
        failure: (NetworkException exception) =>
            Result<List<ScheduleDTO>>.failure(exception),
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

  @override
  Future<Result<List<ScheduleDTO>>> getTeacherSchedule(String id) async {
    try {
      final Result<List?> result = await client.produce(
        route: SearchApi.getTeacherSchedule(id),
      );

      return result.when(
        success: (List? response) {
          // if (response) {
          //   return const Result.failure(
          //     NetworkException.type(error: 'Incorrect data parsing!'),
          //   );
          // }

          final List<ScheduleDTO> questions = (response ?? [])
              .map((e) => ScheduleDTO.fromJson(e as Map<String, dynamic>))
              .toList();

          return Result<List<ScheduleDTO>>.success(questions);
        },
        failure: (NetworkException exception) =>
            Result<List<ScheduleDTO>>.failure(exception),
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
