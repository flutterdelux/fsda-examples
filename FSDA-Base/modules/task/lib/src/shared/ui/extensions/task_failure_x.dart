import 'package:flutter/material.dart';

import '../../../generated/task_localizations.dart';
import '../../domain/errors/task_failure.dart';

extension TaskFailureX on TaskFailure {
  String localize(BuildContext context) {
    final l10n = TaskLocalizations.of(context)!;
    return switch (this) {
      TaskFailure.taskNotFound => l10n.failureTaskNotFound,
    };
  }
}
