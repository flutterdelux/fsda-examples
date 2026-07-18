import 'package:flutter/material.dart';

import '../../../../../generated/subscription_localizations.dart';
import '../../../domain/enums/payment_status.dart';

extension PaymentStatusX on PaymentStatus {
  String localizeLabel(BuildContext context) {
    final l10n = SubscriptionLocalizations.of(context)!;
    return switch (this) {
      PaymentStatus.unpaid => l10n.paymentStatusUnpaidLabel,
      PaymentStatus.paid => l10n.paymentStatusPaidLabel,
      PaymentStatus.expired => l10n.paymentStatusExpiredLabel,
    };
  }

  String localizeMessage(BuildContext context) {
    final l10n = SubscriptionLocalizations.of(context)!;
    return switch (this) {
      PaymentStatus.unpaid => l10n.paymentStatusUnpaidMessage,
      PaymentStatus.paid => l10n.paymentStatusPaidMessage,
      PaymentStatus.expired => l10n.paymentStatusExpiredMessage,
    };
  }

  Color getColor(BuildContext context) {
    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    if (isDark) {
      return switch (this) {
        PaymentStatus.unpaid => Colors.amberAccent,
        PaymentStatus.paid => Colors.greenAccent,
        PaymentStatus.expired => Colors.redAccent,
      };
    }

    return switch (this) {
      PaymentStatus.unpaid => Colors.amber.shade900,
      PaymentStatus.paid => Colors.green.shade900,
      PaymentStatus.expired => Colors.red.shade900,
    };
  }

  IconData get icon {
    return switch (this) {
      PaymentStatus.unpaid => Icons.schedule_rounded,
      PaymentStatus.paid => Icons.check_circle_outline_rounded,
      PaymentStatus.expired => Icons.error_outline_rounded,
    };
  }
}
