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
  String get walletDeletePopupMenuItem => 'Hapus Dompet';

  @override
  String get walletDeleteSuccess => 'Berhasil menghapus Dompet';

  @override
  String get walletDeleteOverlayMessage => 'Menghapus Dompet...';

  @override
  String get walletDeleteDialogTitle => 'Hapus Dompet';

  @override
  String get walletDeleteDialogMessage =>
      'Apakah Anda yakin ingin menghapus Dompet ini?';

  @override
  String get walletDeleteDialogConfirm => 'Ya';

  @override
  String get walletDeleteDialogCancel => 'Batal';
}
