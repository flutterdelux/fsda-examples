import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'location_localizations_en.dart';
import 'location_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of LocationLocalizations
/// returned by `LocationLocalizations.of(context)`.
///
/// Applications need to include `LocationLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/location_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: LocationLocalizations.localizationsDelegates,
///   supportedLocales: LocationLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the LocationLocalizations.supportedLocales
/// property.
abstract class LocationLocalizations {
  LocationLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static LocationLocalizations? of(BuildContext context) {
    return Localizations.of<LocationLocalizations>(
      context,
      LocationLocalizations,
    );
  }

  static const LocalizationsDelegate<LocationLocalizations> delegate =
      _LocationLocalizationsDelegate();

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
  /// **'Location not found'**
  String get failureLocationNotFound;

  /// No description provided for @failureCityNotFound.
  ///
  /// In en, this message translates to:
  /// **'City not found'**
  String get failureCityNotFound;

  /// ========================= City =========================
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get cityAlt;

  /// No description provided for @cityListTitle.
  ///
  /// In en, this message translates to:
  /// **'City List'**
  String get cityListTitle;

  /// No description provided for @cityListEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No City Found'**
  String get cityListEmptyTitle;

  /// No description provided for @cityListEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'No city found at the moment'**
  String get cityListEmptyMessage;

  /// No description provided for @cityListErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to Load City List'**
  String get cityListErrorTitle;
}

class _LocationLocalizationsDelegate
    extends LocalizationsDelegate<LocationLocalizations> {
  const _LocationLocalizationsDelegate();

  @override
  Future<LocationLocalizations> load(Locale locale) {
    return SynchronousFuture<LocationLocalizations>(
      lookupLocationLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_LocationLocalizationsDelegate old) => false;
}

LocationLocalizations lookupLocationLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return LocationLocalizationsEn();
    case 'id':
      return LocationLocalizationsId();
  }

  throw FlutterError(
    'LocationLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
