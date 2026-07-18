import 'package:flutter/material.dart';

import '../../../generated/attendance_localizations.dart';
import '../../domain/errors/attendance_failure.dart';

extension AttendanceFailureX on AttendanceFailure {
  String localize(BuildContext context) {
    final l10n = AttendanceLocalizations.of(context)!;
    return switch (this) {
      AttendanceFailure.attendanceNotFound => l10n.failureAttendanceNotFound,
    };
  }
}
