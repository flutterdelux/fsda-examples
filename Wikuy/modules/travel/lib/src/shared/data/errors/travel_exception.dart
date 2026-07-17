import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/errors/travel_failure.dart';

part 'travel_exception.freezed.dart';

@freezed
sealed class TravelException with _$TravelException implements AppException {
  const TravelException._();

  const factory TravelException.travelNotFound({String? msg, StackTrace? st}) =
      _TravelNotFound;

  @override
  String get message =>
      when(travelNotFound: (msg, _) => msg ?? 'Travel not found');

  @override
  StackTrace? get stackTrace => st;

  @override
  Failure toFailure() =>
      when(travelNotFound: (_, _) => TravelFailure.travelNotFound);

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
