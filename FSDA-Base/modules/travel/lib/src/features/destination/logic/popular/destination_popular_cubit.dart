import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/usecases/destination_popular_use_case.dart';
import 'destination_popular_state.dart';

class DestinationPopularCubit extends Cubit<DestinationPopularState> {
  final DestinationPopularUseCase _useCase;

  DestinationPopularCubit({
    required DestinationPopularUseCase destinationPopularUseCase,
  }) : _useCase = destinationPopularUseCase,
       super(const DestinationPopularState.initial());

  Future<void> getDestinationPopular() async {
    emit(const DestinationPopularState.loading());

    final result = await _useCase();

    emit(
      result.when(
        success: (data) => DestinationPopularState.loaded(data: data),
        failure: (failure) => DestinationPopularState.failure(failure: failure),
      ),
    );
  }
}
