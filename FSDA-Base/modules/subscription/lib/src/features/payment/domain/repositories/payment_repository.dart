import 'package:app_core/app_core.dart';
import '../entities/payment_entity.dart';
import '../params/payment_status_param.dart';

abstract interface class PaymentRepository {
  // ------- Retrieval -------

  StreamResult<PaymentEntity> paymentStatus(PaymentStatusParam param);

  // ------- Mutation -------
}
