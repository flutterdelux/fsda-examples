import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/destination_entity.dart';

part 'destination_popular_state.freezed.dart';

@freezed
sealed class DestinationPopularState with _$DestinationPopularState {
  const factory DestinationPopularState.initial() = _Initial;
  const factory DestinationPopularState.loading() = _Loading;
  const factory DestinationPopularState.loaded({
    required List<DestinationEntity> data,
  }) = _Loaded;
  const factory DestinationPopularState.failure({required Failure failure}) =
      _Failure;
}
