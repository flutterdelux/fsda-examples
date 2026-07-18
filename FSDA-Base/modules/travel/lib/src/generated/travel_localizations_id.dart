// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'travel_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class TravelLocalizationsId extends TravelLocalizations {
  TravelLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get failureTravelNotFound => 'Travel tidak ditemukan';

  @override
  String get failureDestinationNotFound => 'Destination tidak ditemukan';

  @override
  String get destinationAlt => 'Destination';

  @override
  String get destinationPopularTitle => 'Destination Popular';

  @override
  String get destinationPopularEmptyTitle => 'No Destination Found';

  @override
  String get destinationPopularEmptyMessage =>
      'No destination found at the moment';

  @override
  String get destinationPopularErrorTitle =>
      'Failed to Load Destination Popular';
}
