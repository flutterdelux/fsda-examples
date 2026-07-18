import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/errors/attendance_failure.dart';

part 'attendance_exception.freezed.dart';

@freezed
sealed class AttendanceException with _$AttendanceException implements AppException {
  const AttendanceException._();

  const factory AttendanceException.attendanceNotFound({String? msg, StackTrace? st}) =
      _AttendanceNotFound;

  @override
  String get message => when(attendanceNotFound: (msg, _) => msg ?? 'Attendance not found');

  @override
  StackTrace? get stackTrace => st;

  @override
  Failure toFailure() => when(attendanceNotFound: (_, _) => AttendanceFailure.attendanceNotFound);

  static AppException fromApiResponse(ApiResponse response, {StackTrace? st}) {
    return CoreException.fromException(response.body.toString(), st: st);
  }

  static AppException fromException(
    Object e, {
    StackTrace? st,
    bool isLocal = false,
  }) {
    if (e is AppException) {
      return e;
    }

    return CoreException.fromException(e, st: st, isLocal: isLocal);
  }
}
