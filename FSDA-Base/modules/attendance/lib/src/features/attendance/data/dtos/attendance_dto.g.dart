// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceDto _$AttendanceDtoFromJson(Map<String, dynamic> json) =>
    _AttendanceDto(
      id: (json['id'] as num).toInt(),
      userId: json['user_id'] as String,
      type: const AttendanceTypeConverter().fromJson(json['type'] as String),
      clockAt: const UtcDateTimeConverter().fromJson(
        json['clock_at'] as String,
      ),
      createdAt: const UtcDateTimeConverter().fromJson(
        json['created_at'] as String,
      ),
      updatedAt: const UtcDateTimeConverter().fromJson(
        json['updated_at'] as String,
      ),
    );

Map<String, dynamic> _$AttendanceDtoToJson(_AttendanceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'type': const AttendanceTypeConverter().toJson(instance.type),
      'clock_at': const UtcDateTimeConverter().toJson(instance.clockAt),
      'created_at': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updated_at': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };
