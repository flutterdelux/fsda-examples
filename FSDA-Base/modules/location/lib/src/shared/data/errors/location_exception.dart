import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/errors/location_failure.dart';

part 'location_exception.freezed.dart';

@freezed
sealed class LocationException with _$LocationException implements AppException {
  const LocationException._();

  const factory LocationException.locationNotFound({String? msg, StackTrace? st}) =
      _LocationNotFound;
  const factory LocationException.cityNotFound({String? msg, StackTrace? st}) =
      _CityNotFound;


  @override
  String get message => when(locationNotFound: (msg, _) => msg ?? 'Location not found', cityNotFound: (msg, _) => msg ?? 'City not found');

  @override
  StackTrace? get stackTrace => st;

  @override
  Failure toFailure() => when(locationNotFound: (_, _) => LocationFailure.locationNotFound, cityNotFound: (_, _) => LocationFailure.cityNotFound);

  static AppException fromApiResponse(ApiResponse response, {StackTrace? st}) {
    return CoreException.fromException(response.body.toString(), st: st);
  }

  static AppException fromException(
    Object e, {
    StackTrace? st,
    bool isLocal = false,
  }) {
    if (e is AppException) {
      return e;
    }

    return CoreException.fromException(e, st: st, isLocal: isLocal);
  }
}
