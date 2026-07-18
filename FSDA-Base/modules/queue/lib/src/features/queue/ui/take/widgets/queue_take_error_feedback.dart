import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/queue_localizations.dart';

class QueueTakeErrorFeedback extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const QueueTakeErrorFeedback({
    super.key,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final appL10n = AppLocalizations.of(context)!;
    final l10n = QueueLocalizations.of(context)!;
    return AppErrorFeedback(
      title: l10n.queueTakeErrorTitle,
      message: message,
      onRetry: onRetry,
      retryText: appL10n.retry,
    );
  }
}
