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
  String get failureNoteNotFound => 'Catatan tidak ditemukan';

  @override
  String get noteListTitle => 'Daftar Catatan';

  @override
  String get noteListEmptyTitle => 'Tidak Ada Catatan';

  @override
  String get noteListEmptyMessage => 'Tidak ada catatan saat ini';

  @override
  String get noteListErrorTitle => 'Gagal Memuat Daftar Catatan';
}
