import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/note_localizations.dart';

class NoteListErrorFeedback extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const NoteListErrorFeedback({
    super.key,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final appL10n = AppLocalizations.of(context)!;
    final l10n = NoteLocalizations.of(context)!;
    return AppErrorFeedback(
      title: l10n.noteListErrorTitle,
      message: message,
      retryText: appL10n.refresh,
      onRetry: onRetry,
    );
  }
}
