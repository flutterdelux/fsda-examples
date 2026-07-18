// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'location_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class LocationLocalizationsId extends LocationLocalizations {
  LocationLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get failureLocationNotFound => 'Location tidak ditemukan';

  @override
  String get failureCityNotFound => 'City tidak ditemukan';

  @override
  String get cityAlt => 'City';

  @override
  String get cityListTitle => 'Daftar Kota';

  @override
  String get cityListEmptyTitle => 'Tidak ada kota ditemukan';

  @override
  String get cityListEmptyMessage => 'Tidak ada kota yang ditemukan saat ini';

  @override
  String get cityListErrorTitle => 'Gagal memuat daftar kota';
}
