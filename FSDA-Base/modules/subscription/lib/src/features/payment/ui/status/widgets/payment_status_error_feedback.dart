import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/subscription_localizations.dart';

class PaymentStatusErrorFeedback extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const PaymentStatusErrorFeedback({
    super.key,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final appL10n = AppLocalizations.of(context)!;
    final l10n = SubscriptionLocalizations.of(context)!;
    return AppErrorFeedback(
      title: l10n.paymentStatusErrorTitle,
      message: message,
      onRetry: onRetry,
      retryText: appL10n.retry,
    );
  }
}
