import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/finance_localizations.dart';

class WalletDeletePopupMenuItem extends PopupMenuItem {
  static const valueKey = 'wallet_delete';

  const WalletDeletePopupMenuItem({super.key, super.onTap})
    : super(value: valueKey, child: const _Child());
}

class _Child extends StatelessWidget {
  const _Child();

  @override
  Widget build(BuildContext context) {
    final l10n = FinanceLocalizations.of(context)!;
    return Row(
      children: [
        const Icon(Icons.delete, size: 20),
        AppGap.sm,
        Text(l10n.walletDeletePopupMenuItem),
      ],
    );
  }
}
