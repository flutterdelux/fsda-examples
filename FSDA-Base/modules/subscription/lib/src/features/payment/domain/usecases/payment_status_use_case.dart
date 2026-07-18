import 'package:app_core/app_core.dart';

import '../entities/payment_entity.dart';
import '../params/payment_status_param.dart';
import '../repositories/payment_repository.dart';

class PaymentStatusUseCase
    extends StreamUseCase<PaymentEntity, PaymentStatusParam> {
  final PaymentRepository _repository;

  const PaymentStatusUseCase({required PaymentRepository paymentRepository})
    : _repository = paymentRepository;

  @override
  StreamResult<PaymentEntity> call(PaymentStatusParam param) {
    return _repository.watchPaymentStatus(param);
  }
}
