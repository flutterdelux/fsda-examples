import '../dtos/product_dto.dart';
import '../requests/product_detail_request.dart';

abstract interface class ProductRemoteDataSource {
  // ------- Retrieval -------

  Future<ProductDto> getProductDetail(ProductDetailRequest request);

  // ------- Mutation -------
}
