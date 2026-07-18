// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'task_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class TaskLocalizationsId extends TaskLocalizations {
  TaskLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get taskAlt => 'Task';

  @override
  String get failureTaskNotFound => 'Tugas tidak ditemukan';

  @override
  String get failureTaskFormInvalid =>
      'Harap isi semua input yang diperlukan dengan benar';

  @override
  String get taskCreateTitle => 'Buat Tugas';

  @override
  String get taskCreateAction => 'Buat';

  @override
  String get taskCreateSuccess => 'Tugas berhasil dibuat';

  @override
  String get taskFieldTitleLabel => 'Judul';

  @override
  String get taskFieldTitleHint => 'Masukkan judul...';

  @override
  String get taskFieldTitleInvalidEmpty => 'Judul tidak boleh kosong';

  @override
  String get taskFieldDescriptionLabel => 'Deskripsi';

  @override
  String get taskFieldDescriptionHint => 'Masukkan deskripsi...';

  @override
  String get taskFieldDescriptionInvalidEmpty => 'Deskripsi tidak boleh kosong';
}
