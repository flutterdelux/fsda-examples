import 'package:flutter/material.dart';

import '../../../generated/finance_localizations.dart';
import '../../domain/errors/finance_failure.dart';

extension FinanceFailureX on FinanceFailure {
  String localize(BuildContext context) {
    final l10n = FinanceLocalizations.of(context)!;
    return switch (this) {
      FinanceFailure.financeNotFound => l10n.failureFinanceNotFound,
      FinanceFailure.walletNotFound => l10n.failureWalletNotFound,

    };
  }
}
