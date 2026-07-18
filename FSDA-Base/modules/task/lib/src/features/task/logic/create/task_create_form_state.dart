import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/params/task_create_param.dart';

part 'task_create_form_state.freezed.dart';

@freezed
abstract class TaskCreateFormState with _$TaskCreateFormState {
  const factory TaskCreateFormState({
    TaskCreateParam? param,
    String? invalidMessage,
  }) = _TaskCreateFormState;
}
