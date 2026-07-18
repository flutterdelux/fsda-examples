import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/errors/note_failure.dart';

part 'note_exception.freezed.dart';

@freezed
sealed class NoteException with _$NoteException implements AppException {
  const NoteException._();

  const factory NoteException.noteNotFound({String? msg, StackTrace? st}) =
      _NoteNotFound;

  @override
  String get message => when(noteNotFound: (msg, _) => msg ?? 'Note not found');

  @override
  StackTrace? get stackTrace => st;

  @override
  Failure toFailure() => when(noteNotFound: (_, _) => NoteFailure.noteNotFound);

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
