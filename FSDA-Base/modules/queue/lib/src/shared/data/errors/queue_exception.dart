import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/errors/queue_failure.dart';

part 'queue_exception.freezed.dart';

@freezed
sealed class QueueException with _$QueueException implements AppException {
  const QueueException._();

  const factory QueueException.queueNotFound({String? msg, StackTrace? st}) =
      _QueueNotFound;

  @override
  String get message => when(queueNotFound: (msg, _) => msg ?? 'Queue not found');

  @override
  StackTrace? get stackTrace => st;

  @override
  Failure toFailure() => when(queueNotFound: (_, _) => QueueFailure.queueNotFound);

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
