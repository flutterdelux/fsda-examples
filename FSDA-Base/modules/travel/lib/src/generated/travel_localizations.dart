import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'travel_localizations_en.dart';
import 'travel_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of TravelLocalizations
/// returned by `TravelLocalizations.of(context)`.
///
/// Applications need to include `TravelLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/travel_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: TravelLocalizations.localizationsDelegates,
///   supportedLocales: TravelLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the TravelLocalizations.supportedLocales
/// property.
abstract class TravelLocalizations {
  TravelLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static TravelLocalizations? of(BuildContext context) {
    return Localizations.of<TravelLocalizations>(context, TravelLocalizations);
  }

  static const LocalizationsDelegate<TravelLocalizations> delegate =
      _TravelLocalizationsDelegate();

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
  /// **'Travel not found'**
  String get failureTravelNotFound;

  /// No description provided for @failureDestinationNotFound.
  ///
  /// In en, this message translates to:
  /// **'Destination not found'**
  String get failureDestinationNotFound;

  /// ========================= Destination =========================
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get destinationAlt;

  /// No description provided for @destinationPopularTitle.
  ///
  /// In en, this message translates to:
  /// **'Destination Popular'**
  String get destinationPopularTitle;

  /// No description provided for @destinationPopularEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No Destination Found'**
  String get destinationPopularEmptyTitle;

  /// No description provided for @destinationPopularEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'No destination found at the moment'**
  String get destinationPopularEmptyMessage;

  /// No description provided for @destinationPopularErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to Load Destination Popular'**
  String get destinationPopularErrorTitle;
}

class _TravelLocalizationsDelegate
    extends LocalizationsDelegate<TravelLocalizations> {
  const _TravelLocalizationsDelegate();

  @override
  Future<TravelLocalizations> load(Locale locale) {
    return SynchronousFuture<TravelLocalizations>(
      lookupTravelLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_TravelLocalizationsDelegate old) => false;
}

TravelLocalizations lookupTravelLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return TravelLocalizationsEn();
    case 'id':
      return TravelLocalizationsId();
  }

  throw FlutterError(
    'TravelLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
