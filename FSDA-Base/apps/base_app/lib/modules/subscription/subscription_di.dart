import 'package:subscription/subscription.dart';

import '../../core/di/di.dart';

abstract final class SubscriptionDi {
  static void register() {
    // reg feature di
    _paymentDi();
  }

  // payment feature
  static void _paymentDi() {
    // Datasources
    sl.registerLazySingleton<PaymentRemoteDataSource>(
      () => PaymentRemoteDataSourceImpl(apiClient: sl()),
    );

    // Repositories
    sl.registerLazySingleton<PaymentRepository>(
      () => PaymentRepositoryImpl(
        appLogger: sl(param1: 'PaymentRepository'),
        paymentRemoteDataSource: sl(),
      ),
    );

    // Usecases
    sl.registerLazySingleton(
      () => PaymentStatusUseCase(paymentRepository: sl()),
    );

    // Logic (Cubits/Blocs)
    sl.registerFactoryParam<PaymentStatusCubit, String, void>(
      (id, _) => PaymentStatusCubit(paymentStatusUseCase: sl(), id: id),
    );
  }
}
