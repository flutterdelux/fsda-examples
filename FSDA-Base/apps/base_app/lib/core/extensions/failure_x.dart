import 'package:app_core/app_core.dart';
import 'package:app_l10n/app_l10n.dart';
import 'package:attendance/attendance.dart';
import 'package:finance/finance.dart';
import 'package:flutter/material.dart';
import 'package:inbox/inbox.dart';
import 'package:location/location.dart';
import 'package:note/note.dart';
import 'package:product/product.dart';
import 'package:queue/queue.dart';
import 'package:subscription/subscription.dart';
import 'package:task/task.dart';
import 'package:travel/travel.dart';

extension FailureX on Failure {
  String localizeAny(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    if (this is CoreFailure) {
      final l10n = AppLocalizations.of(context)!;
      return switch (this as CoreFailure) {
        .cacheError => l10n.coreFailureCacheError,
        .networkError => l10n.coreFailureNetworkError,
        .timeoutError => l10n.coreFailureTimeoutError,
        .serverError => l10n.coreFailureServerError,
        .unauthenticated => l10n.coreFailureUnauthenticated,
        .serviceUnavailable => l10n.coreFailureServiceUnavailable,
      };
    }

    // Module Failures

    if (this is InboxFailure) {
      return (this as InboxFailure).localize(context);
    }

    if (this is FinanceFailure) {
      return (this as FinanceFailure).localize(context);
    }

    if (this is QueueFailure) {
      return (this as QueueFailure).localize(context);
    }

    if (this is TaskFailure) {
      return (this as TaskFailure).localize(context);
    }

    if (this is TravelFailure) {
      return (this as TravelFailure).localize(context);
    }

    if (this is ProductFailure) {
      return (this as ProductFailure).localize(context);
    }

    if (this is LocationFailure) {
      return (this as LocationFailure).localize(context);
    }

    if (this is AttendanceFailure) {
      return (this as AttendanceFailure).localize(context);
    }

    if (this is SubscriptionFailure) {
      return (this as SubscriptionFailure).localize(context);
    }

    if (this is NoteFailure) {
      return (this as NoteFailure).localize(context);
    }

    return l10n.unknownError;
  }
}
