import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/params/product_detail_param.dart';
import '../../domain/usecases/product_detail_use_case.dart';
import 'product_detail_state.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  final ProductDetailUseCase _useCase;
  final int _id;

  ProductDetailCubit({
    required ProductDetailUseCase productDetailUseCase,
    required int id,
  }) : _useCase = productDetailUseCase,
       _id = id,
       super(const ProductDetailState.initial());

  Future<void> getProductDetail() async {
    emit(const ProductDetailState.loading());

    final param = ProductDetailParam(id: _id);
    final result = await _useCase(param);

    emit(
      result.when(
        success: (data) => ProductDetailState.loaded(data: data),
        failure: (failure) => ProductDetailState.failure(failure: failure),
      ),
    );
  }
}
