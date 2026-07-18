import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/attendance_entity.dart';

part 'attendance_dto.freezed.dart';
part 'attendance_dto.g.dart';

@freezed
abstract class AttendanceDto with _$AttendanceDto {
  const AttendanceDto._();

  const factory AttendanceDto({
    required int id,
    required String userId,
    @UtcDateTimeConverter() required DateTime clockAt,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _AttendanceDto;

  factory AttendanceDto.fromJson(Map<String, Object?> json) =>
      _$AttendanceDtoFromJson(json);

  AttendanceEntity toEntity() {
    return AttendanceEntity(
      id: id,
      userId: userId,
      clockAt: clockAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
