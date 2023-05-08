import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';

abstract class ScheduleRemoteDataSource {
  Future<List<ScheduleDTO?>> getSchedule(String id);
}

class ScheduleRemoteDataSourceImpl implements ScheduleRemoteDataSource {
  Dio dio = Dio();

  @override
  Future<List<ScheduleDTO>> getSchedule(String id) async {
    try {
      debugPrint("I am making API call to backend getScheduleLIST");
      var response = await dio.get(
        'https://university-scheduler.herokuapp.com/schedules/extended?searchId=$id&searchType=GROUP&pageSize=50&pageCurrent=1&pageTotal=0',
        options: Options(
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
        ),
      );
      log(response.statusCode.toString());
      debugPrint("I am making API call to backend getScheduleLIST END");
      (response.data as List)
          .map(
            (e) => log(e.toString()),
          )
          .toList();
      // log(response.data.toString());
      // log((response.data as List).map((e) => ScheduleDTO.fromJson(e as Map<String, dynamic>)).toString());
      return (response.data as List).map((e) => ScheduleDTO.fromJson(e as Map<String, dynamic>)).toList();
    } catch (e) {
      debugPrint(e.toString());
      throw Exception(e);
    }
  }
}
