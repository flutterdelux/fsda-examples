import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/attendance_entity.dart';
import '../../domain/enums/attendance_type.dart';
import '../converters/attendance_type_converter.dart';

part 'attendance_dto.freezed.dart';
part 'attendance_dto.g.dart';

@freezed
abstract class AttendanceDto with _$AttendanceDto {
  const AttendanceDto._();

  const factory AttendanceDto({
    required int id,
    required String userId,
    @AttendanceTypeConverter() required AttendanceType type,
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
      type: type,
      clockAt: clockAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
