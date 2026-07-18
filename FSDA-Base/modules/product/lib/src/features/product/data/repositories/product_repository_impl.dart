import 'package:app_core/app_core.dart';

import '../../domain/entities/product_entity.dart';
import '../../domain/params/product_detail_param.dart';
import '../../domain/repositories/product_repository.dart';
import '../datasources/product_remote_data_source.dart';
import '../requests/product_detail_request.dart';

class ProductRepositoryImpl
    with RepositoryExceptionHandler
    implements ProductRepository {
  final AppLogger _log;
  final ProductRemoteDataSource _remoteDataSource;

  const ProductRepositoryImpl({
    required AppLogger appLogger,
    required ProductRemoteDataSource productRemoteDataSource,
  }) : _log = appLogger,
       _remoteDataSource = productRemoteDataSource;

  @override
  AppLogger get log => _log;

  // ------- Retrieval -------

  @override
  AsyncResult<ProductEntity> getProductDetail(ProductDetailParam param) async {
    try {
      final request = ProductDetailRequest.fromParam(param);
      final productDto = await _remoteDataSource.getProductDetail(request);
      return Result.success(productDto.toEntity());
    } catch (e, st) {
      return handleException('productDetail', e, st);
    }
  }

  // ------- Mutation -------
}
