// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DestinationListResponse _$DestinationListResponseFromJson(
  Map<String, dynamic> json,
) => _DestinationListResponse(
  status: json['status'] as String,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => DestinationDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  code: json['code'] as String?,
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$DestinationListResponseToJson(
  _DestinationListResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'code': instance.code,
  'errors': instance.errors,
};
