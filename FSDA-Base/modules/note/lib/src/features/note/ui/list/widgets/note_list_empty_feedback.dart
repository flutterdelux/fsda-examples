import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/note_localizations.dart';

class NoteListEmptyFeedback extends StatelessWidget {
  final VoidCallback onRefresh;
  const NoteListEmptyFeedback({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    final appL10n = AppLocalizations.of(context)!;
    final l10n = NoteLocalizations.of(context)!;
    return AppEmptyFeedback(
      title: l10n.noteListEmptyTitle,
      message: l10n.noteListEmptyMessage,
      onRefresh: onRefresh,
      refreshText: appL10n.refresh,
    );
  }
}
