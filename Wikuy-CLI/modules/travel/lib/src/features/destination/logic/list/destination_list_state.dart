import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/destination_entity.dart';

part 'destination_list_state.freezed.dart';

@freezed
sealed class DestinationListState with _$DestinationListState {
  const factory DestinationListState.initial() = _Initial;
  const factory DestinationListState.loading() = _Loading;
  const factory DestinationListState.loaded({
    required List<DestinationEntity> data,
  }) = _Loaded;
  const factory DestinationListState.failure({required Failure failure}) =
      _Failure;
}
