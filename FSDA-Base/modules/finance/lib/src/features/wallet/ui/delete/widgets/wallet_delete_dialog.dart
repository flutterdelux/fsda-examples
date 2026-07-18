import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/finance_localizations.dart';

class WalletDeleteDialog extends StatelessWidget {
  final VoidCallback onConfirm;
  const WalletDeleteDialog({super.key, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    final l10n = FinanceLocalizations.of(context)!;
    return AppConfirmationDialog(
      title: l10n.walletDeleteDialogTitle,
      message: l10n.walletDeleteDialogMessage,
      cancelText: l10n.walletDeleteDialogCancel,
      confirmText: l10n.walletDeleteDialogConfirm,
      onConfirm: onConfirm,
      isDestructive: true,
    );
  }

  Future<void> show(BuildContext context) {
    return showDialog(context: context, builder: (context) => this);
  }
}
