import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/payment_entity.dart';
import '../../domain/enums/payment_status.dart';
import '../converters/payment_status_converter.dart';

part 'payment_dto.freezed.dart';
part 'payment_dto.g.dart';

@freezed
abstract class PaymentDto with _$PaymentDto {
  const PaymentDto._();

  const factory PaymentDto({
    required String id,
    required String userId,
    required double amount,
    required String currency,
    @PaymentStatusConverter() required PaymentStatus status,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _PaymentDto;

  factory PaymentDto.fromJson(Map<String, Object?> json) =>
      _$PaymentDtoFromJson(json);

  PaymentEntity toEntity() {
    return PaymentEntity(
      id: id,
      userId: userId,
      amount: amount,
      currency: currency,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
