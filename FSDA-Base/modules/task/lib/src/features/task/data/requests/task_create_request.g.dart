// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskCreateRequest _$TaskCreateRequestFromJson(Map<String, dynamic> json) =>
    _TaskCreateRequest(
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$TaskCreateRequestToJson(_TaskCreateRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
