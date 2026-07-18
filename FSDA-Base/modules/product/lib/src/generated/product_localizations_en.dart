// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'product_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ProductLocalizationsEn extends ProductLocalizations {
  ProductLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get productAlt => 'Product';

  @override
  String get failureProductNotFound => 'Product not found';

  @override
  String get productDetailTitle => 'Product Detail';

  @override
  String get productDetailErrorTitle => 'Failed to Load Product';
}
