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
