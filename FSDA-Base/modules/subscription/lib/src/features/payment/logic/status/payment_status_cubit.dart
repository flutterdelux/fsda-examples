import 'dart:async';

import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/entities/payment_entity.dart';
import '../../domain/params/payment_status_param.dart';
import '../../domain/usecases/payment_status_use_case.dart';
import 'payment_status_state.dart';

class PaymentStatusCubit extends Cubit<PaymentStatusState> {
  final PaymentStatusUseCase _useCase;
  final String _id;

  StreamSubscription<Result<PaymentEntity>>? _subscription;

  PaymentStatusCubit({
    required PaymentStatusUseCase paymentStatusUseCase,
    required String id,
  }) : _useCase = paymentStatusUseCase,
       _id = id,
       super(const PaymentStatusState.initial());

  void watchPaymentStatus() {
    emit(const PaymentStatusState.loading());

    _subscription?.cancel();
    final param = PaymentStatusParam(id: _id);
    _subscription = _useCase(param).listen(_onData, onError: _onError);
  }

  void _onData(Result<PaymentEntity> result) {
    emit(
      result.when(
        success: (data) => PaymentStatusState.loaded(data: data),
        failure: (failure) => PaymentStatusState.failure(failure: failure),
      ),
    );
  }

  void _onError(dynamic e) {
    emit(
      PaymentStatusState.failure(
        failure: CoreException.fromException(
          e.toString(),
          st: StackTrace.current,
        ).toFailure(),
      ),
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
