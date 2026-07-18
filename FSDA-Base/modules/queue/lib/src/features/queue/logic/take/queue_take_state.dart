import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/queue_entity.dart';

part 'queue_take_state.freezed.dart';

@freezed
sealed class QueueTakeState with _$QueueTakeState {
  const factory QueueTakeState.initial() = _Initial;
  const factory QueueTakeState.loading() = _Loading;
  const factory QueueTakeState.success({required QueueEntity data}) = _Success;
  const factory QueueTakeState.failure({required Failure failure}) = _Failure;
}
