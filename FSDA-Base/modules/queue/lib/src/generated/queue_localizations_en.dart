// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'queue_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class QueueLocalizationsEn extends QueueLocalizations {
  QueueLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get queueAlt => 'Queue';

  @override
  String get failureQueueNotFound => 'Queue not found';

  @override
  String get queueTakeTitle => 'Queue Take';

  @override
  String get queueTakeErrorTitle => 'Failed to Load Queue';

  @override
  String get queueTakeAction => 'Take Queue';

  @override
  String get queueTakeInitialMessage =>
      'You have not taken a queue yet. Please take a queue to proceed.';

  @override
  String get queueStatusLabel => 'Status';

  @override
  String get queueStatusWaiting => 'Waiting';

  @override
  String get queueStatusCalled => 'Called';

  @override
  String get queueStatusCompleted => 'Completed';
}
