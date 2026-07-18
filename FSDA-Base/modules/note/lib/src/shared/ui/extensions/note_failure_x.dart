import 'package:flutter/material.dart';

import '../../../generated/note_localizations.dart';
import '../../domain/errors/note_failure.dart';

extension NoteFailureX on NoteFailure {
  String localize(BuildContext context) {
    final l10n = NoteLocalizations.of(context)!;
    return switch (this) {
      NoteFailure.noteNotFound => l10n.failureNoteNotFound,
    };
  }
}
