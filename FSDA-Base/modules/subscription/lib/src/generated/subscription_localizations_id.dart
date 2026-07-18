// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'subscription_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class SubscriptionLocalizationsId extends SubscriptionLocalizations {
  SubscriptionLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get failureSubscriptionNotFound => 'Subscription tidak ditemukan';

  @override
  String get failurePaymentNotFound => 'Payment tidak ditemukan';

  @override
  String get paymentAlt => 'Payment';

  @override
  String get paymentIdLabel => 'ID Pembayaran';

  @override
  String get paymentCreatedAtLabel => 'Dibuat Pada';

  @override
  String get paymentStatusTitle => 'Status Pembayaran Anda';

  @override
  String get paymentStatusUnpaidLabel => 'Belum Dibayar';

  @override
  String get paymentStatusUnpaidMessage =>
      'Silakan selesaikan proses pembayaran dalam jangka waktu yang ditentukan untuk menghindari pembatalan';

  @override
  String get paymentStatusPaidLabel => 'Sudah Dibayar';

  @override
  String get paymentStatusPaidMessage => 'Pembayaran Anda telah dikonfirmasi';

  @override
  String get paymentStatusExpiredLabel => 'Kadaluwarsa';

  @override
  String get paymentStatusExpiredMessage => 'Pembayaran Anda telah kadaluwarsa';

  @override
  String get paymentStatusErrorTitle => 'Gagal Memuat Status Pembayaran';

  @override
  String get paymentStatusActionBackToDashboard => 'Kembali ke Dashboard';

  @override
  String get paymentStatusActionPayNow => 'Bayar Sekarang';
}
