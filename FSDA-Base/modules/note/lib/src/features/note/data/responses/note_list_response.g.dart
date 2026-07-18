// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoteListResponse _$NoteListResponseFromJson(Map<String, dynamic> json) =>
    _NoteListResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      meta: json['meta'] as Map<String, dynamic>?,
      data: _noteListFromJson(json['data']),
      code: json['code'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$NoteListResponseToJson(_NoteListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'code': instance.code,
      'errors': instance.errors,
    };
