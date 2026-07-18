import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'attendance_localizations_en.dart';
import 'attendance_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AttendanceLocalizations
/// returned by `AttendanceLocalizations.of(context)`.
///
/// Applications need to include `AttendanceLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/attendance_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AttendanceLocalizations.localizationsDelegates,
///   supportedLocales: AttendanceLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AttendanceLocalizations.supportedLocales
/// property.
abstract class AttendanceLocalizations {
  AttendanceLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AttendanceLocalizations? of(BuildContext context) {
    return Localizations.of<AttendanceLocalizations>(
      context,
      AttendanceLocalizations,
    );
  }

  static const LocalizationsDelegate<AttendanceLocalizations> delegate =
      _AttendanceLocalizationsDelegate();

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

  /// ========================= Attendance =========================
  ///
  /// In en, this message translates to:
  /// **'Attendance'**
  String get attendanceAlt;

  /// No description provided for @failureAttendanceNotFound.
  ///
  /// In en, this message translates to:
  /// **'Attendance not found'**
  String get failureAttendanceNotFound;

  /// No description provided for @attendanceListTitle.
  ///
  /// In en, this message translates to:
  /// **'Attendance List'**
  String get attendanceListTitle;

  /// No description provided for @attendanceListEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No Attendance Found'**
  String get attendanceListEmptyTitle;

  /// No description provided for @attendanceListEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'No attendance found at the moment'**
  String get attendanceListEmptyMessage;

  /// No description provided for @attendanceListErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to Load Attendance List'**
  String get attendanceListErrorTitle;

  /// No description provided for @attendanceTypeClockIn.
  ///
  /// In en, this message translates to:
  /// **'Clock In'**
  String get attendanceTypeClockIn;

  /// No description provided for @attendanceTypeClockOut.
  ///
  /// In en, this message translates to:
  /// **'Clock Out'**
  String get attendanceTypeClockOut;
}

class _AttendanceLocalizationsDelegate
    extends LocalizationsDelegate<AttendanceLocalizations> {
  const _AttendanceLocalizationsDelegate();

  @override
  Future<AttendanceLocalizations> load(Locale locale) {
    return SynchronousFuture<AttendanceLocalizations>(
      lookupAttendanceLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_AttendanceLocalizationsDelegate old) => false;
}

AttendanceLocalizations lookupAttendanceLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AttendanceLocalizationsEn();
    case 'id':
      return AttendanceLocalizationsId();
  }

  throw FlutterError(
    'AttendanceLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
