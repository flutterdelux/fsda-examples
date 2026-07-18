import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'subscription_localizations_en.dart';
import 'subscription_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of SubscriptionLocalizations
/// returned by `SubscriptionLocalizations.of(context)`.
///
/// Applications need to include `SubscriptionLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/subscription_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: SubscriptionLocalizations.localizationsDelegates,
///   supportedLocales: SubscriptionLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the SubscriptionLocalizations.supportedLocales
/// property.
abstract class SubscriptionLocalizations {
  SubscriptionLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static SubscriptionLocalizations? of(BuildContext context) {
    return Localizations.of<SubscriptionLocalizations>(
      context,
      SubscriptionLocalizations,
    );
  }

  static const LocalizationsDelegate<SubscriptionLocalizations> delegate =
      _SubscriptionLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id'),
  ];

  /// ========================= Failure =========================
  ///
  /// In en, this message translates to:
  /// **'Subscription not found'**
  String get failureSubscriptionNotFound;

  /// No description provided for @failurePaymentNotFound.
  ///
  /// In en, this message translates to:
  /// **'Payment not found'**
  String get failurePaymentNotFound;

  /// ========================= Payment =========================
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get paymentAlt;

  /// No description provided for @paymentIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Payment ID'**
  String get paymentIdLabel;

  /// No description provided for @paymentCreatedAtLabel.
  ///
  /// In en, this message translates to:
  /// **'Created At'**
  String get paymentCreatedAtLabel;

  /// No description provided for @paymentStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Payment Status'**
  String get paymentStatusTitle;

  /// No description provided for @paymentStatusUnpaidLabel.
  ///
  /// In en, this message translates to:
  /// **'Unpaid'**
  String get paymentStatusUnpaidLabel;

  /// No description provided for @paymentStatusUnpaidMessage.
  ///
  /// In en, this message translates to:
  /// **'Please complete the payment process within the specified time frame to avoid cancellation'**
  String get paymentStatusUnpaidMessage;

  /// No description provided for @paymentStatusPaidLabel.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paymentStatusPaidLabel;

  /// No description provided for @paymentStatusPaidMessage.
  ///
  /// In en, this message translates to:
  /// **'Your payment has been confirmed'**
  String get paymentStatusPaidMessage;

  /// No description provided for @paymentStatusExpiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get paymentStatusExpiredLabel;

  /// No description provided for @paymentStatusExpiredMessage.
  ///
  /// In en, this message translates to:
  /// **'Your payment has expired'**
  String get paymentStatusExpiredMessage;

  /// No description provided for @paymentStatusErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to Load Payment Status'**
  String get paymentStatusErrorTitle;

  /// No description provided for @paymentStatusActionBackToDashboard.
  ///
  /// In en, this message translates to:
  /// **'Back to Dashboard'**
  String get paymentStatusActionBackToDashboard;

  /// No description provided for @paymentStatusActionPayNow.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get paymentStatusActionPayNow;
}

class _SubscriptionLocalizationsDelegate
    extends LocalizationsDelegate<SubscriptionLocalizations> {
  const _SubscriptionLocalizationsDelegate();

  @override
  Future<SubscriptionLocalizations> load(Locale locale) {
    return SynchronousFuture<SubscriptionLocalizations>(
      lookupSubscriptionLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_SubscriptionLocalizationsDelegate old) => false;
}

SubscriptionLocalizations lookupSubscriptionLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return SubscriptionLocalizationsEn();
    case 'id':
      return SubscriptionLocalizationsId();
  }

  throw FlutterError(
    'SubscriptionLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
