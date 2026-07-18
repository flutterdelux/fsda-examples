import 'package:flutter/material.dart';

import '../../../../../generated/attendance_localizations.dart';
import '../../../domain/enums/attendance_type.dart';

extension AttendanceTypeX on AttendanceType {
  String localize(BuildContext context) {
    final l10n = AttendanceLocalizations.of(context)!;
    return switch (this) {
      AttendanceType.clockIn => l10n.attendanceTypeClockIn,
      AttendanceType.clockOut => l10n.attendanceTypeClockOut,
    };
  }

  IconData get icon {
    return switch (this) {
      AttendanceType.clockIn => Icons.login,
      AttendanceType.clockOut => Icons.logout,
    };
  }
}
