// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'attendance_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AttendanceLocalizationsId extends AttendanceLocalizations {
  AttendanceLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get attendanceAlt => 'Attendance';

  @override
  String get failureAttendanceNotFound => 'Attendance tidak ditemukan';

  @override
  String get attendanceListTitle => 'Attendance List';

  @override
  String get attendanceListEmptyTitle => 'No Attendance Found';

  @override
  String get attendanceListEmptyMessage => 'No attendance found at the moment';

  @override
  String get attendanceListErrorTitle => 'Failed to Load Attendance List';
}
