import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/usecases/destination_list_use_case.dart';
import 'destination_list_state.dart';

class DestinationListCubit extends Cubit<DestinationListState> {
  final DestinationListUseCase _useCase;

  DestinationListCubit({required DestinationListUseCase destinationListUseCase})
    : _useCase = destinationListUseCase,
      super(const DestinationListState.initial());

  Future<void> getDestinationList() async {
    emit(const DestinationListState.loading());

    final result = await _useCase();

    emit(
      result.when(
        success: (data) => DestinationListState.loaded(data: data),
        failure: (failure) => DestinationListState.failure(failure: failure),
      ),
    );
  }
}
