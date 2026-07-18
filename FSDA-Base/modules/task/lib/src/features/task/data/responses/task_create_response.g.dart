// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_create_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskCreateResponse _$TaskCreateResponseFromJson(Map<String, dynamic> json) =>
    _TaskCreateResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      data: _taskFromJson(json['data']),
      code: json['code'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TaskCreateResponseToJson(_TaskCreateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
      'code': instance.code,
      'errors': instance.errors,
    };
