import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'product_localizations_en.dart';
import 'product_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of ProductLocalizations
/// returned by `ProductLocalizations.of(context)`.
///
/// Applications need to include `ProductLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/product_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: ProductLocalizations.localizationsDelegates,
///   supportedLocales: ProductLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the ProductLocalizations.supportedLocales
/// property.
abstract class ProductLocalizations {
  ProductLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static ProductLocalizations? of(BuildContext context) {
    return Localizations.of<ProductLocalizations>(
      context,
      ProductLocalizations,
    );
  }

  static const LocalizationsDelegate<ProductLocalizations> delegate =
      _ProductLocalizationsDelegate();

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

  /// ========================= Product =========================
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get productAlt;

  /// No description provided for @failureProductNotFound.
  ///
  /// In en, this message translates to:
  /// **'Product not found'**
  String get failureProductNotFound;

  /// No description provided for @productDetailTitle.
  ///
  /// In en, this message translates to:
  /// **'Product Detail'**
  String get productDetailTitle;

  /// No description provided for @productDetailErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to Load Product'**
  String get productDetailErrorTitle;
}

class _ProductLocalizationsDelegate
    extends LocalizationsDelegate<ProductLocalizations> {
  const _ProductLocalizationsDelegate();

  @override
  Future<ProductLocalizations> load(Locale locale) {
    return SynchronousFuture<ProductLocalizations>(
      lookupProductLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_ProductLocalizationsDelegate old) => false;
}

ProductLocalizations lookupProductLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return ProductLocalizationsEn();
    case 'id':
      return ProductLocalizationsId();
  }

  throw FlutterError(
    'ProductLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
