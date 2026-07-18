import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_status_param.freezed.dart';

@freezed
abstract class PaymentStatusParam with _$PaymentStatusParam {
  const factory PaymentStatusParam({required String id}) = _PaymentStatusParam;
}
