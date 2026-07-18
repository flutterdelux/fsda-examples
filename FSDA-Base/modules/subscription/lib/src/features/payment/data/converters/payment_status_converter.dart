import 'package:json_annotation/json_annotation.dart';

import '../../domain/enums/payment_status.dart';

class PaymentStatusConverter extends JsonConverter<PaymentStatus, String> {
  const PaymentStatusConverter();

  @override
  PaymentStatus fromJson(String json) {
    return switch (json) {
      'unpaid' => PaymentStatus.unpaid,
      'paid' => PaymentStatus.paid,
      'expired' => PaymentStatus.expired,
      _ => PaymentStatus.unpaid,
    };
  }

  @override
  String toJson(PaymentStatus object) {
    return switch (object) {
      PaymentStatus.unpaid => 'unpaid',
      PaymentStatus.paid => 'paid',
      PaymentStatus.expired => 'expired',
    };
  }
}
