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
  String get destinationListTitle => 'Destination List';

  @override
  String get destinationListEmptyTitle => 'No Destination Found';

  @override
  String get destinationListEmptyMessage =>
      'No destination found at the moment';

  @override
  String get destinationListErrorTitle => 'Failed to Load Destination List';
}
