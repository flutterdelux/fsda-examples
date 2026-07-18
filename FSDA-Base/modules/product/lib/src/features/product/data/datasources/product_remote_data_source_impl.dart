import 'package:app_core/app_core.dart';

import '../../../../shared/data/errors/product_exception.dart';
import '../dtos/product_dto.dart';
import '../requests/product_detail_request.dart';
import '../responses/product_detail_response.dart';
import 'product_remote_data_source.dart';

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final ApiClient _apiClient;

  const ProductRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  @override
  Future<ProductDto> getProductDetail(ProductDetailRequest request) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/products/${request.id}',
    );

    if (response.statusCode == 200) {
      final productDetailResponse = ProductDetailResponse.fromJson(
        response.body,
      );
      if (productDetailResponse.data != null) {
        return productDetailResponse.data!;
      }

      throw CoreException.serverError(
        msg: 'ProductDetail data is null',
        st: StackTrace.current,
      );
    }

    throw ProductException.fromApiResponse(response, st: StackTrace.current);
  }

  // ------- Mutation -------
}
