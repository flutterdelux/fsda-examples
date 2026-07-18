// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'finance_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class FinanceLocalizationsEn extends FinanceLocalizations {
  FinanceLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get failureFinanceNotFound => 'Finance not found';

  @override
  String get failureWalletNotFound => 'Wallet not found';

  @override
  String get walletAlt => 'Wallet';

  @override
  String get walletDeletePopupMenuItem => 'Delete Wallet';

  @override
  String get walletDeleteSuccess => 'Delete Wallet successfully';

  @override
  String get walletDeleteOverlayMessage => 'Delete Wallet...';

  @override
  String get walletDeleteDialogTitle => 'Delete Wallet';

  @override
  String get walletDeleteDialogMessage =>
      'Are you sure you want to Delete this Wallet?';

  @override
  String get walletDeleteDialogConfirm => 'Yes';

  @override
  String get walletDeleteDialogCancel => 'Cancel';
}
