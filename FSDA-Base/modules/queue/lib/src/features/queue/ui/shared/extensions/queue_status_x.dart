import 'package:flutter/material.dart';

import '../../../../../generated/queue_localizations.dart';
import '../../../domain/enums/queue_status.dart';

extension QueueStatusX on QueueStatus {
  String localize(BuildContext context) {
    final l10n = QueueLocalizations.of(context)!;
    return switch (this) {
      QueueStatus.waiting => l10n.queueStatusWaiting,
      QueueStatus.called => l10n.queueStatusCalled,
      QueueStatus.completed => l10n.queueStatusCompleted,
    };
  }

  Color get color {
    return switch (this) {
      QueueStatus.waiting => Colors.orange,
      QueueStatus.called => Colors.blue,
      QueueStatus.completed => Colors.green,
    };
  }
}
