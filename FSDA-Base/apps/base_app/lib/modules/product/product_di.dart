import 'package:product/product.dart';

import '../../core/di/di.dart';

abstract final class ProductDi {
  static void register() {
    // reg feature di
    _productDi();
  }

  // product feature
  static void _productDi() {
    // Datasources
    sl.registerLazySingleton<ProductRemoteDataSource>(
      () => ProductRemoteDataSourceImpl(apiClient: sl()),
    );

    // Repositories
    sl.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(
        appLogger: sl(param1: 'ProductRepository'),
        productRemoteDataSource: sl(),
      ),
    );

    // Usecases
    sl.registerLazySingleton(
      () => ProductDetailUseCase(productRepository: sl()),
    );

    // Logic (Cubits/Blocs)
    sl.registerFactoryParam<ProductDetailCubit, int, void>(
      (id, _) => ProductDetailCubit(productDetailUseCase: sl(), id: id),
    );
  }
}
