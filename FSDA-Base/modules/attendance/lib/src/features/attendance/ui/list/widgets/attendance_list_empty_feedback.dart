import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/attendance_localizations.dart';

class AttendanceListEmptyFeedback extends StatelessWidget {
  final VoidCallback onRefresh;
  const AttendanceListEmptyFeedback({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    final appL10n = AppLocalizations.of(context)!;
    final l10n = AttendanceLocalizations.of(context)!;
    return AppEmptyFeedback(
      title: l10n.attendanceListEmptyTitle,
      message: l10n.attendanceListEmptyMessage,
      onRefresh: onRefresh,
      refreshText: appL10n.refresh,
    );
  }
}
