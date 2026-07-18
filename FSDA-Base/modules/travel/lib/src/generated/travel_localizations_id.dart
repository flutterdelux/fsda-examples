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
  String get destinationPopularTitle => 'Destinasi Populer';

  @override
  String get destinationPopularEmptyTitle => 'Tidak Ada Destinasi Ditemukan';

  @override
  String get destinationPopularEmptyMessage =>
      'Tidak ada destinasi yang ditemukan saat ini';

  @override
  String get destinationPopularErrorTitle => 'Gagal Memuat Destinasi Populer';
}
