import 'package:flutter/material.dart';
import '../../../../../generated/attendance_localizations.dart';

class AttendanceListView extends StatelessWidget {
  final Widget content;
  const AttendanceListView({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final l10n = AttendanceLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.attendanceListTitle)),
      body: content,
    );
  }
}
