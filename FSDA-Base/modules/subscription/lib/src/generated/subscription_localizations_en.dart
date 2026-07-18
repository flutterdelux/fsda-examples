// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'subscription_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SubscriptionLocalizationsEn extends SubscriptionLocalizations {
  SubscriptionLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get failureSubscriptionNotFound => 'Subscription not found';

  @override
  String get failurePaymentNotFound => 'Payment not found';

  @override
  String get paymentAlt => 'Payment';

  @override
  String get paymentIdLabel => 'Payment ID';

  @override
  String get paymentCreatedAtLabel => 'Created At';

  @override
  String get paymentStatusTitle => 'Your Payment Status';

  @override
  String get paymentStatusUnpaidLabel => 'Unpaid';

  @override
  String get paymentStatusUnpaidMessage =>
      'Please complete the payment process within the specified time frame to avoid cancellation';

  @override
  String get paymentStatusPaidLabel => 'Paid';

  @override
  String get paymentStatusPaidMessage => 'Your payment has been confirmed';

  @override
  String get paymentStatusExpiredLabel => 'Expired';

  @override
  String get paymentStatusExpiredMessage => 'Your payment has expired';

  @override
  String get paymentStatusErrorTitle => 'Failed to Load Payment Status';

  @override
  String get paymentStatusActionBackToDashboard => 'Back to Dashboard';

  @override
  String get paymentStatusActionPayNow => 'Pay Now';
}
