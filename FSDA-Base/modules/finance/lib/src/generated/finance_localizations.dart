import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'finance_localizations_en.dart';
import 'finance_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FinanceLocalizations
/// returned by `FinanceLocalizations.of(context)`.
///
/// Applications need to include `FinanceLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/finance_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FinanceLocalizations.localizationsDelegates,
///   supportedLocales: FinanceLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the FinanceLocalizations.supportedLocales
/// property.
abstract class FinanceLocalizations {
  FinanceLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FinanceLocalizations? of(BuildContext context) {
    return Localizations.of<FinanceLocalizations>(
      context,
      FinanceLocalizations,
    );
  }

  static const LocalizationsDelegate<FinanceLocalizations> delegate =
      _FinanceLocalizationsDelegate();

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
  /// **'Finance not found'**
  String get failureFinanceNotFound;

  /// No description provided for @failureWalletNotFound.
  ///
  /// In en, this message translates to:
  /// **'Wallet not found'**
  String get failureWalletNotFound;

  /// ========================= Wallet =========================
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get walletAlt;

  /// No description provided for @walletDeletePopupMenuItem.
  ///
  /// In en, this message translates to:
  /// **'Delete Wallet'**
  String get walletDeletePopupMenuItem;

  /// No description provided for @walletDeleteSuccess.
  ///
  /// In en, this message translates to:
  /// **'Delete Wallet successfully'**
  String get walletDeleteSuccess;

  /// No description provided for @walletDeleteOverlayMessage.
  ///
  /// In en, this message translates to:
  /// **'Delete Wallet...'**
  String get walletDeleteOverlayMessage;

  /// No description provided for @walletDeleteDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Wallet'**
  String get walletDeleteDialogTitle;

  /// No description provided for @walletDeleteDialogMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to Delete this Wallet?'**
  String get walletDeleteDialogMessage;

  /// No description provided for @walletDeleteDialogConfirm.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get walletDeleteDialogConfirm;

  /// No description provided for @walletDeleteDialogCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get walletDeleteDialogCancel;
}

class _FinanceLocalizationsDelegate
    extends LocalizationsDelegate<FinanceLocalizations> {
  const _FinanceLocalizationsDelegate();

  @override
  Future<FinanceLocalizations> load(Locale locale) {
    return SynchronousFuture<FinanceLocalizations>(
      lookupFinanceLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_FinanceLocalizationsDelegate old) => false;
}

FinanceLocalizations lookupFinanceLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return FinanceLocalizationsEn();
    case 'id':
      return FinanceLocalizationsId();
  }

  throw FlutterError(
    'FinanceLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
