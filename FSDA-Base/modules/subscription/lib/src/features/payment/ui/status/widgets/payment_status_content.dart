import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../generated/subscription_localizations.dart';
import '../../../domain/entities/payment_entity.dart';
import '../../../domain/enums/payment_status.dart';
import '../../shared/extension/payment_status_x.dart';

class PaymentStatusContent extends StatelessWidget {
  final PaymentEntity payment;
  final VoidCallback? onBackToDashboard;
  final VoidCallback? onPayNow;
  const PaymentStatusContent({
    super.key,
    required this.payment,
    this.onBackToDashboard,
    this.onPayNow,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = SubscriptionLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    final status = payment.status;
    final color = status.getColor(context);

    return Align(
      alignment: const Alignment(0, -0.5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 120,
            backgroundColor: color.withValues(alpha: .05),
            child: CircleAvatar(
              radius: 90,
              backgroundColor: color.withValues(alpha: .15),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: color.withValues(alpha: 0.7),
                child: Icon(status.icon, color: Colors.white, size: 80),
              ),
            ),
          ),
          AppGap.lg,
          Text(status.localizeLabel(context), style: textTheme.titleLarge),
          AppGap.sm,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            child: Text(
              payment.status.localizeMessage(context),
              style: textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),

          AppGap.xl,

          AppCard(
            margin: const EdgeInsetsGeometry.symmetric(
              horizontal: AppSpacing.xl,
            ),
            children: [
              AppInfoTile(title: l10n.paymentIdLabel, data: payment.id),
              AppInfoTile(
                title: l10n.paymentCreatedAtLabel,
                data: DateFormat.yMMMd().add_jm().format(payment.createdAt),
              ),
            ],
          ),

          AppGap.lg,

          switch (status) {
            PaymentStatus.unpaid => FilledButton(
              onPressed: onPayNow,
              child: Text(l10n.paymentStatusActionPayNow),
            ),
            _ => FilledButton(
              onPressed: onBackToDashboard,
              child: Text(l10n.paymentStatusActionBackToDashboard),
            ),
          },
        ],
      ),
    );
  }
}
