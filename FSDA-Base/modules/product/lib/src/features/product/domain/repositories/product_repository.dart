import 'package:app_core/app_core.dart';
import '../entities/product_entity.dart';
import '../params/product_detail_param.dart';

abstract interface class ProductRepository {
  // ------- Retrieval -------

  AsyncResult<ProductEntity> getProductDetail(ProductDetailParam param);

  // ------- Mutation -------
}
