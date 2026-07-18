// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'inbox_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class InboxLocalizationsEn extends InboxLocalizations {
  InboxLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get inboxAlt => 'Inbox';

  @override
  String get failureInboxNotFound => 'Inbox not found';

  @override
  String get inboxMarkAllReadPopupMenuItem => 'Mark All Read Inbox';

  @override
  String get inboxMarkAllReadSuccess => 'Mark All Read Inbox successfully';

  @override
  String get inboxMarkAllReadOverlayMessage => 'Mark All Read Inbox...';
}
