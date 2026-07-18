import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/errors/inbox_failure.dart';

part 'inbox_exception.freezed.dart';

@freezed
sealed class InboxException with _$InboxException implements AppException {
  const InboxException._();

  const factory InboxException.inboxNotFound({String? msg, StackTrace? st}) =
      _InboxNotFound;

  @override
  String get message => when(inboxNotFound: (msg, _) => msg ?? 'Inbox not found');

  @override
  StackTrace? get stackTrace => st;

  @override
  Failure toFailure() => when(inboxNotFound: (_, _) => InboxFailure.inboxNotFound);

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
