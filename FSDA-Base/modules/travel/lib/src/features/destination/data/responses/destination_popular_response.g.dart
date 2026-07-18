// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_popular_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DestinationPopularResponse _$DestinationPopularResponseFromJson(
  Map<String, dynamic> json,
) => _DestinationPopularResponse(
  status: json['status'] as String,
  message: json['message'] as String,
  data: _destinationListFromJson(json['data']),
  code: json['code'] as String?,
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$DestinationPopularResponseToJson(
  _DestinationPopularResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'code': instance.code,
  'errors': instance.errors,
};
