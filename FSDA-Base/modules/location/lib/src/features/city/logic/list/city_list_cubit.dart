import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/usecases/city_list_use_case.dart';
import 'city_list_state.dart';

class CityListCubit extends Cubit<CityListState> {
  final CityListUseCase _useCase;

  CityListCubit({required CityListUseCase cityListUseCase})
    : _useCase = cityListUseCase,
      super(const CityListState());

  Future<void> init() async {
    await refresh();
  }

  Future<void> refresh() async {
    await _getData(page: 1);
  }

  Future<void> loadMore() async {
    if (state.isLoading || state.hasReachedMax) return;
    await _getData(page: state.param.page + 1);
  }

  Future<void> _getData({required int page}) async {
    emit(
      state.copyWith(
        isLoading: true,
        failure: null,
        list: page == 1 ? [] : state.list,
      ),
    );

    final selectedParam = state.param.copyWith(page: page);
    final result = await _useCase(selectedParam);

    emit(
      result.when(
        success: (data) => state.copyWith(
          list: [...state.list, ...data],
          hasReachedMax: data.length < state.param.pageSize,
          isLoading: false,
          param: selectedParam,
        ),
        failure: (failure) =>
            state.copyWith(isLoading: false, failure: failure),
      ),
    );
  }
}
