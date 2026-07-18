// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QueueDto _$QueueDtoFromJson(Map<String, dynamic> json) => _QueueDto(
  id: (json['id'] as num).toInt(),
  queueNumber: json['queue_number'] as String,
  status: const QueueStatusConverter().fromJson(json['status'] as String),
  createdAt: const UtcDateTimeConverter().fromJson(
    json['created_at'] as String,
  ),
  updatedAt: const UtcDateTimeConverter().fromJson(
    json['updated_at'] as String,
  ),
);

Map<String, dynamic> _$QueueDtoToJson(_QueueDto instance) => <String, dynamic>{
  'id': instance.id,
  'queue_number': instance.queueNumber,
  'status': const QueueStatusConverter().toJson(instance.status),
  'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updated_at': const UtcDateTimeConverter().toJson(instance.updatedAt),
};
