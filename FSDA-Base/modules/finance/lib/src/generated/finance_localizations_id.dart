// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'finance_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class FinanceLocalizationsId extends FinanceLocalizations {
  FinanceLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get failureFinanceNotFound => 'Finance tidak ditemukan';

  @override
  String get failureWalletNotFound => 'Wallet tidak ditemukan';

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
