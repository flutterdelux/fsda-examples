import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/payment_status.dart';

part 'payment_entity.freezed.dart';

@freezed
abstract class PaymentEntity with _$PaymentEntity {
  const factory PaymentEntity({
    required String id,
    required String userId,
    required double amount,
    required String currency,
    required PaymentStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PaymentEntity;
}
