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
  String get failureAttendanceNotFound => 'Kehadiran tidak ditemukan';

  @override
  String get attendanceListTitle => 'Daftar Kehadiran';

  @override
  String get attendanceListEmptyTitle => 'Tidak ada kehadiran ditemukan';

  @override
  String get attendanceListEmptyMessage =>
      'Tidak ada kehadiran yang ditemukan saat ini';

  @override
  String get attendanceListErrorTitle => 'Gagal memuat daftar kehadiran';

  @override
  String get attendanceTypeClockIn => 'Masuk';

  @override
  String get attendanceTypeClockOut => 'Keluar';
}
