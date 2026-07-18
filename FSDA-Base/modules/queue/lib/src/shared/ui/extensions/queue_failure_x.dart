import 'package:flutter/material.dart';

import '../../../generated/queue_localizations.dart';
import '../../domain/errors/queue_failure.dart';

extension QueueFailureX on QueueFailure {
  String localize(BuildContext context) {
    final l10n = QueueLocalizations.of(context)!;
    return switch (this) {
      QueueFailure.queueNotFound => l10n.failureQueueNotFound,
    };
  }
}
