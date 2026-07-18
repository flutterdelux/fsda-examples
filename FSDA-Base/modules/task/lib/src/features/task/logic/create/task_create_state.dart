import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/task_entity.dart';

part 'task_create_state.freezed.dart';

@freezed
sealed class TaskCreateState with _$TaskCreateState {
  const factory TaskCreateState.initial() = _Initial;
  const factory TaskCreateState.loading() = _Loading;
  const factory TaskCreateState.success({required TaskEntity data}) = _Success;
  const factory TaskCreateState.failure({required Failure failure}) = _Failure;
}
