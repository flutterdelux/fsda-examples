import 'package:app_core/app_core.dart';

import '../../domain/entities/payment_entity.dart';
import '../../domain/params/payment_status_param.dart';
import '../../domain/repositories/payment_repository.dart';
import '../datasources/payment_remote_data_source.dart';
import '../requests/payment_status_request.dart';

class PaymentRepositoryImpl
    with RepositoryExceptionHandler
    implements PaymentRepository {
  final AppLogger _log;
  final PaymentRemoteDataSource _remoteDataSource;

  const PaymentRepositoryImpl({
    required AppLogger appLogger,
    required PaymentRemoteDataSource paymentRemoteDataSource,
  }) : _log = appLogger,
       _remoteDataSource = paymentRemoteDataSource;

  @override
  AppLogger get log => _log;

  // ------- Retrieval -------

  @override
  StreamResult<PaymentEntity> watchPaymentStatus(
    PaymentStatusParam param,
  ) async* {
    try {
      final request = PaymentStatusRequest.fromParam(param);
      final stream = _remoteDataSource.watchPaymentStatus(request);

      await for (final dto in stream) {
        final entity = dto.toEntity();
        yield Result.success(entity);
      }
    } catch (e, st) {
      yield handleException('watchPaymentStatus', e, st);
    }
  }

  // ------- Mutation -------
}
