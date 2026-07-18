import 'package:app_core/app_core.dart';

import '../entities/product_entity.dart';
import '../params/product_detail_param.dart';
import '../repositories/product_repository.dart';

class ProductDetailUseCase extends UseCase<ProductEntity, ProductDetailParam> {
  final ProductRepository _repository;

  const ProductDetailUseCase({required ProductRepository productRepository})
    : _repository = productRepository;

  @override
  AsyncResult<ProductEntity> call(ProductDetailParam param) =>
      _repository.getProductDetail(param);
}
