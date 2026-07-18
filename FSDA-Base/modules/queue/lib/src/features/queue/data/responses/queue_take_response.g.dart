// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_take_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QueueTakeResponse _$QueueTakeResponseFromJson(Map<String, dynamic> json) =>
    _QueueTakeResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      data: _queueFromJson(json['data']),
      code: json['code'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$QueueTakeResponseToJson(_QueueTakeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
      'code': instance.code,
      'errors': instance.errors,
    };
