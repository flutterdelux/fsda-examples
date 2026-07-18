import 'package:flutter/material.dart';

import '../../../generated/inbox_localizations.dart';
import '../../domain/errors/inbox_failure.dart';

extension InboxFailureX on InboxFailure {
  String localize(BuildContext context) {
    final l10n = InboxLocalizations.of(context)!;
    return switch (this) {
      InboxFailure.inboxNotFound => l10n.failureInboxNotFound,
    };
  }
}
