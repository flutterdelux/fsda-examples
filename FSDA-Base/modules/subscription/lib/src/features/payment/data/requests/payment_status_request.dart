import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/params/payment_status_param.dart';

part 'payment_status_request.freezed.dart';
part 'payment_status_request.g.dart';

@freezed
abstract class PaymentStatusRequest with _$PaymentStatusRequest {
  const PaymentStatusRequest._();

  const factory PaymentStatusRequest({required String id}) =
      _PaymentStatusRequest;

  factory PaymentStatusRequest.fromJson(Map<String, Object?> json) =>
      _$PaymentStatusRequestFromJson(json);

  factory PaymentStatusRequest.fromParam(PaymentStatusParam param) {
    return PaymentStatusRequest(id: param.id);
  }
}
