import 'package:flutter/material.dart';
import '../../../../../generated/subscription_localizations.dart';

class PaymentStatusView extends StatelessWidget {
  final Widget content;
  const PaymentStatusView({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final l10n = SubscriptionLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.paymentStatusTitle)),
      body: content,
    );
  }
}
