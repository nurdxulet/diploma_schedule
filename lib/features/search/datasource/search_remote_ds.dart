import 'package:flutter/foundation.dart';
import 'package:l/l.dart';
import 'package:schedule/core/error/network_exception.dart';
import 'package:schedule/core/network/layers/network_executer.dart';
import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';
import 'package:schedule/features/search/datasource/search_api.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/teacher_dto.dart';

abstract class ISearchRemoteDS {
  Future<Result<List<GroupDTO>>> getAllGroups(String universityCode);

  Future<Result<List<TeacherDTO>>> getAllTeachers(String universityCode);
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
  Future<Result<List<GroupDTO>>> getAllGroups(String universityCode) async {
    try {
      final Result<List?> result = await client.produce(
        route: SearchApi.getAllGroups(universityCode),
      );

      return result.when(
        success: (List? response) {
          // if (response) {
          //   return const Result.failure(
          //     NetworkException.type(error: 'Incorrect data parsing!'),
          //   );
          // }

          final List<GroupDTO> groups =
              (response ?? []).map((e) => GroupDTO.fromJson(e as Map<String, dynamic>)).toList();

          return Result<List<GroupDTO>>.success(groups);
        },
        failure: (NetworkException exception) => Result<List<GroupDTO>>.failure(exception),
      );
    } catch (e) {
      if (kDebugMode) {
        l.d('login => ${NetworkException.type(error: e.toString())}');
      }
      return Result<List<GroupDTO>>.failure(
        NetworkException.type(error: e.toString()),
      );
    }
  }

  @override
  Future<Result<List<TeacherDTO>>> getAllTeachers(String universityCode) async {
    try {
      final Result<List?> result = await client.produce(
        route: SearchApi.getAllTeachers(universityCode),
      );

      return result.when(
        success: (List? response) {
          // if (response) {
          //   return const Result.failure(
          //     NetworkException.type(error: 'Incorrect data parsing!'),
          //   );
          // }

          final List<TeacherDTO> teachers =
              (response ?? []).map((e) => TeacherDTO.fromJson(e as Map<String, dynamic>)).toList();

          return Result<List<TeacherDTO>>.success(teachers);
        },
        failure: (NetworkException exception) => Result<List<TeacherDTO>>.failure(exception),
      );
    } catch (e) {
      if (kDebugMode) {
        l.d('login => ${NetworkException.type(error: e.toString())}');
      }
      return Result<List<TeacherDTO>>.failure(
        NetworkException.type(error: e.toString()),
      );
    }
  }
}
