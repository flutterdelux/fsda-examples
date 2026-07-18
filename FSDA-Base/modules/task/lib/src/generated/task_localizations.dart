import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'task_localizations_en.dart';
import 'task_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of TaskLocalizations
/// returned by `TaskLocalizations.of(context)`.
///
/// Applications need to include `TaskLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/task_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: TaskLocalizations.localizationsDelegates,
///   supportedLocales: TaskLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the TaskLocalizations.supportedLocales
/// property.
abstract class TaskLocalizations {
  TaskLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static TaskLocalizations? of(BuildContext context) {
    return Localizations.of<TaskLocalizations>(context, TaskLocalizations);
  }

  static const LocalizationsDelegate<TaskLocalizations> delegate =
      _TaskLocalizationsDelegate();

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

  /// ========================= Task =========================
  ///
  /// In en, this message translates to:
  /// **'Task'**
  String get taskAlt;

  /// No description provided for @failureTaskNotFound.
  ///
  /// In en, this message translates to:
  /// **'Task not found'**
  String get failureTaskNotFound;

  /// No description provided for @failureTaskFormInvalid.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all required fields correctly'**
  String get failureTaskFormInvalid;

  /// No description provided for @taskCreateTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Task'**
  String get taskCreateTitle;

  /// No description provided for @taskCreateAction.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get taskCreateAction;

  /// No description provided for @taskCreateSuccess.
  ///
  /// In en, this message translates to:
  /// **'Task created successfully'**
  String get taskCreateSuccess;

  /// No description provided for @taskFieldTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get taskFieldTitleLabel;

  /// No description provided for @taskFieldTitleHint.
  ///
  /// In en, this message translates to:
  /// **'Enter title...'**
  String get taskFieldTitleHint;

  /// No description provided for @taskFieldTitleInvalidEmpty.
  ///
  /// In en, this message translates to:
  /// **'Title cannot be empty'**
  String get taskFieldTitleInvalidEmpty;

  /// No description provided for @taskFieldDescriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get taskFieldDescriptionLabel;

  /// No description provided for @taskFieldDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'Enter description...'**
  String get taskFieldDescriptionHint;

  /// No description provided for @taskFieldDescriptionInvalidEmpty.
  ///
  /// In en, this message translates to:
  /// **'Description cannot be empty'**
  String get taskFieldDescriptionInvalidEmpty;
}

class _TaskLocalizationsDelegate
    extends LocalizationsDelegate<TaskLocalizations> {
  const _TaskLocalizationsDelegate();

  @override
  Future<TaskLocalizations> load(Locale locale) {
    return SynchronousFuture<TaskLocalizations>(
      lookupTaskLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_TaskLocalizationsDelegate old) => false;
}

TaskLocalizations lookupTaskLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return TaskLocalizationsEn();
    case 'id':
      return TaskLocalizationsId();
  }

  throw FlutterError(
    'TaskLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
