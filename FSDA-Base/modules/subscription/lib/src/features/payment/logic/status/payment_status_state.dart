import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/payment_entity.dart';

part 'payment_status_state.freezed.dart';

@freezed
sealed class PaymentStatusState with _$PaymentStatusState {
  const factory PaymentStatusState.initial() = _Initial;
  const factory PaymentStatusState.loading() = _Loading;
  const factory PaymentStatusState.loaded({required PaymentEntity data}) =
      _Loaded;
  const factory PaymentStatusState.failure({required Failure failure}) =
      _Failure;
}
