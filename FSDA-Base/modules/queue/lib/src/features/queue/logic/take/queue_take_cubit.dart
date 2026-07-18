import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/usecases/queue_take_use_case.dart';
import 'queue_take_state.dart';

class QueueTakeCubit extends Cubit<QueueTakeState> {
  final QueueTakeUseCase _useCase;

  QueueTakeCubit({required QueueTakeUseCase queueTakeUseCase})
    : _useCase = queueTakeUseCase,
      super(const QueueTakeState.initial());

  Future<void> takeQueue() async {
    emit(const QueueTakeState.loading());

    final result = await _useCase();

    emit(
      result.when(
        success: (data) => QueueTakeState.success(data: data),
        failure: (failure) => QueueTakeState.failure(failure: failure),
      ),
    );
  }
}
