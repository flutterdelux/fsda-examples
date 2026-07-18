import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/attendance/pages/attendance_list_page.dart';

abstract final class AttendanceRoute {
  static const _attendance = 'attendance';
  static const _attendanceList = 'attendance-list';

  static RouteBase get base => GoRoute(
    path: '/attendance',
    name: _attendance,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: 'attendance_list',
        name: _attendanceList,
        builder: (context, state) => const AttendanceListPage(),
      ),
    ],
  );

  static Future<dynamic> toAttendance(BuildContext context) {
    return context.pushNamed(_attendance);
  }

  static Future<dynamic> toAttendanceList(BuildContext context) {
    return context.pushNamed(_attendanceList);
  }
}
