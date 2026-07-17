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
  String get destinationListTitle => 'Daftar Destinasi';

  @override
  String get destinationListEmptyTitle => 'Destinasi Tidak Ditemukan';

  @override
  String get destinationListEmptyMessage =>
      'Tidak ada destinasi yang ditemukan saat ini';

  @override
  String get destinationListErrorTitle => 'Gagal Memuat Daftar Destinasi';
}
