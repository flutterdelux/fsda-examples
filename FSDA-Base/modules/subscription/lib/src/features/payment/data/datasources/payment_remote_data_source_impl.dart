import 'package:app_core/app_core.dart';

import '../../../../shared/data/errors/subscription_exception.dart';
import '../dtos/payment_dto.dart';
import '../requests/payment_status_request.dart';
import 'payment_remote_data_source.dart';

class PaymentRemoteDataSourceImpl implements PaymentRemoteDataSource {
  final ApiClient _apiClient;

  const PaymentRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  @override
  Stream<PaymentDto> watchPaymentStatus(
    PaymentStatusRequest paymentStatusRequest,
  ) async* {
    final path = '/payments/${paymentStatusRequest.id}/status/stream';
    try {
      await for (final data in _apiClient.stream<Map<String, dynamic>>(path)) {
        yield PaymentDto.fromJson(data);
      }
    } catch (e, st) {
      if (e is AppException) {
        if (e.message.contains('status code') && e.message.contains('404')) {
          throw SubscriptionException.paymentNotFound(msg: e.message, st: st);
        }
      }
      throw SubscriptionException.fromException(e, st: st);
    }
  }

  // ------- Mutation -------
}
