// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'note_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class NoteLocalizationsEn extends NoteLocalizations {
  NoteLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get noteAlt => 'Note';

  @override
  String get failureNoteNotFound => 'Note not found';

  @override
  String get noteListTitle => 'Note List';

  @override
  String get noteListEmptyTitle => 'No Note Found';

  @override
  String get noteListEmptyMessage => 'No note found at the moment';

  @override
  String get noteListErrorTitle => 'Failed to Load Note List';
}
