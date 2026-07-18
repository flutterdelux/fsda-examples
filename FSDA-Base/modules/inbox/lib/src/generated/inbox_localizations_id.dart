// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'inbox_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class InboxLocalizationsId extends InboxLocalizations {
  InboxLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get inboxAlt => 'Inbox';

  @override
  String get failureInboxNotFound => 'Inbox tidak ditemukan';

  @override
  String get inboxMarkAllReadPopupMenuItem => 'Tandai Semua Sebagai Dibaca';

  @override
  String get inboxMarkAllReadSuccess => 'Tandai Semua Sebagai Dibaca berhasil';

  @override
  String get inboxMarkAllReadOverlayMessage =>
      'Menandai Semua Sebagai Dibaca...';
}
