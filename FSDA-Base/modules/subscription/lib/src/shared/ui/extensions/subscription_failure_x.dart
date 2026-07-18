import 'package:flutter/material.dart';

import '../../../generated/subscription_localizations.dart';
import '../../domain/errors/subscription_failure.dart';

extension SubscriptionFailureX on SubscriptionFailure {
  String localize(BuildContext context) {
    final l10n = SubscriptionLocalizations.of(context)!;
    return switch (this) {
      SubscriptionFailure.subscriptionNotFound =>
        l10n.failureSubscriptionNotFound,
      SubscriptionFailure.paymentNotFound => l10n.failurePaymentNotFound,
    };
  }
}
