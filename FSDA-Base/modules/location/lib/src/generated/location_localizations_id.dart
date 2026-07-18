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
  String get cityListTitle => 'City List';

  @override
  String get cityListEmptyTitle => 'No City Found';

  @override
  String get cityListEmptyMessage => 'No city found at the moment';

  @override
  String get cityListErrorTitle => 'Failed to Load City List';
}
