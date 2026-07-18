import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/errors/task_failure.dart';

part 'task_exception.freezed.dart';

@freezed
sealed class TaskException with _$TaskException implements AppException {
  const TaskException._();

  const factory TaskException.taskNotFound({String? msg, StackTrace? st}) =
      _TaskNotFound;

  @override
  String get message => when(taskNotFound: (msg, _) => msg ?? 'Task not found');

  @override
  StackTrace? get stackTrace => st;

  @override
  Failure toFailure() => when(taskNotFound: (_, _) => TaskFailure.taskNotFound);

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
