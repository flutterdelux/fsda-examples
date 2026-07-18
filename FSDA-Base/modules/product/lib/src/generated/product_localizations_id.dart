// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'product_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class ProductLocalizationsId extends ProductLocalizations {
  ProductLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get productAlt => 'Product';

  @override
  String get failureProductNotFound => 'Product tidak ditemukan';

  @override
  String get productDetailTitle => 'Detail Produk';

  @override
  String get productDetailErrorTitle => 'Gagal Memuat Produk';
}
