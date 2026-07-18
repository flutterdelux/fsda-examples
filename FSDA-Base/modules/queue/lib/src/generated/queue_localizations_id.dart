// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'queue_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class QueueLocalizationsId extends QueueLocalizations {
  QueueLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get queueAlt => 'Queue';

  @override
  String get failureQueueNotFound => 'Queue tidak ditemukan';

  @override
  String get queueTakeTitle => 'Ambil Antrian';

  @override
  String get queueTakeErrorTitle => 'Gagal Memuat Antrian';

  @override
  String get queueTakeAction => 'Ambil Antrian';

  @override
  String get queueTakeInitialMessage =>
      'Anda belum mengambil antrian. Silakan ambil antrian untuk melanjutkan.';

  @override
  String get queueStatusLabel => 'Status';

  @override
  String get queueStatusWaiting => 'Menunggu';

  @override
  String get queueStatusCalled => 'Dipanggil';

  @override
  String get queueStatusCompleted => 'Selesai';
}
