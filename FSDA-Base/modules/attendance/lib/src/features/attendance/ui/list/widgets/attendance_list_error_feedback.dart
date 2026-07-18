import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/attendance_localizations.dart';

class AttendanceListErrorFeedback extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const AttendanceListErrorFeedback({
    super.key,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final appL10n = AppLocalizations.of(context)!;
    final l10n = AttendanceLocalizations.of(context)!;
    return AppErrorFeedback(
      title: l10n.attendanceListErrorTitle,
      message: message,
      retryText: appL10n.refresh,
      onRetry: onRetry,
    );
  }
}
