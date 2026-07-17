// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'travel_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class TravelLocalizationsEn extends TravelLocalizations {
  TravelLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get failureTravelNotFound => 'Travel not found';

  @override
  String get failureDestinationNotFound => 'Destination not found';

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
