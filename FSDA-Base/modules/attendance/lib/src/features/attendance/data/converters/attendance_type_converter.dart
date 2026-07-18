import 'package:json_annotation/json_annotation.dart';

import '../../domain/enums/attendance_type.dart';

class AttendanceTypeConverter extends JsonConverter<AttendanceType, String> {
  const AttendanceTypeConverter();

  @override
  AttendanceType fromJson(String json) {
    return switch (json) {
      'clock_in' => AttendanceType.clockIn,
      'clock_out' => AttendanceType.clockOut,
      _ => throw ArgumentError('Invalid attendance type: $json'),
    };
  }

  @override
  String toJson(AttendanceType object) {
    return switch (object) {
      AttendanceType.clockIn => 'clock_in',
      AttendanceType.clockOut => 'clock_out',
    };
  }
}
