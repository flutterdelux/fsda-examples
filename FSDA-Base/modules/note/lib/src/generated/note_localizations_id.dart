// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'note_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class NoteLocalizationsId extends NoteLocalizations {
  NoteLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get noteAlt => 'Note';

  @override
  String get failureNoteNotFound => 'Note tidak ditemukan';

  @override
  String get noteListTitle => 'Note List';

  @override
  String get noteListEmptyTitle => 'No Note Found';

  @override
  String get noteListEmptyMessage => 'No note found at the moment';

  @override
  String get noteListErrorTitle => 'Failed to Load Note List';
}
