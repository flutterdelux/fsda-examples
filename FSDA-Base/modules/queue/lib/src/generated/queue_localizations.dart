import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'queue_localizations_en.dart';
import 'queue_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of QueueLocalizations
/// returned by `QueueLocalizations.of(context)`.
///
/// Applications need to include `QueueLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/queue_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: QueueLocalizations.localizationsDelegates,
///   supportedLocales: QueueLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the QueueLocalizations.supportedLocales
/// property.
abstract class QueueLocalizations {
  QueueLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static QueueLocalizations? of(BuildContext context) {
    return Localizations.of<QueueLocalizations>(context, QueueLocalizations);
  }

  static const LocalizationsDelegate<QueueLocalizations> delegate =
      _QueueLocalizationsDelegate();

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

  /// ========================= Queue =========================
  ///
  /// In en, this message translates to:
  /// **'Queue'**
  String get queueAlt;

  /// No description provided for @failureQueueNotFound.
  ///
  /// In en, this message translates to:
  /// **'Queue not found'**
  String get failureQueueNotFound;

  /// No description provided for @queueTakeTitle.
  ///
  /// In en, this message translates to:
  /// **'Queue Take'**
  String get queueTakeTitle;

  /// No description provided for @queueTakeErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to Load Queue'**
  String get queueTakeErrorTitle;

  /// No description provided for @queueTakeAction.
  ///
  /// In en, this message translates to:
  /// **'Take Queue'**
  String get queueTakeAction;

  /// No description provided for @queueTakeInitialMessage.
  ///
  /// In en, this message translates to:
  /// **'You have not taken a queue yet. Please take a queue to proceed.'**
  String get queueTakeInitialMessage;

  /// No description provided for @queueStatusLabel.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get queueStatusLabel;

  /// No description provided for @queueStatusWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get queueStatusWaiting;

  /// No description provided for @queueStatusCalled.
  ///
  /// In en, this message translates to:
  /// **'Called'**
  String get queueStatusCalled;

  /// No description provided for @queueStatusCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get queueStatusCompleted;
}

class _QueueLocalizationsDelegate
    extends LocalizationsDelegate<QueueLocalizations> {
  const _QueueLocalizationsDelegate();

  @override
  Future<QueueLocalizations> load(Locale locale) {
    return SynchronousFuture<QueueLocalizations>(
      lookupQueueLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_QueueLocalizationsDelegate old) => false;
}

QueueLocalizations lookupQueueLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return QueueLocalizationsEn();
    case 'id':
      return QueueLocalizationsId();
  }

  throw FlutterError(
    'QueueLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
