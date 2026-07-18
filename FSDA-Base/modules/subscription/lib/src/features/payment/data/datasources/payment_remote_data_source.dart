import '../dtos/payment_dto.dart';
import '../requests/payment_status_request.dart';

abstract interface class PaymentRemoteDataSource {
  // ------- Retrieval -------

  Stream<PaymentDto> watchPaymentStatus(
    PaymentStatusRequest paymentStatusRequest,
  );

  // ------- Mutation -------
}
