// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicResponse _$BasicResponseFromJson(Map<String, dynamic> json) =>
    BasicResponse(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$BasicResponseToJson(BasicResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
