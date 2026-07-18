import 'package:finance/finance.dart';

import '../../core/di/di.dart';

abstract final class FinanceDi {
  static void register() {
    // reg feature di
    _walletDi();
  }


  // wallet feature
  static void _walletDi() {
    // Datasources
    sl.registerLazySingleton<WalletRemoteDataSource>(() => WalletRemoteDataSourceImpl(apiClient: sl()));

    // Repositories
    sl.registerLazySingleton<WalletRepository>(() => WalletRepositoryImpl(appLogger: sl(param1: 'WalletRepository'), walletRemoteDataSource: sl()));

    // Usecases
    sl.registerLazySingleton(() => WalletDeleteUseCase(walletRepository: sl()));

    // Logic (Cubits/Blocs)
    sl.registerFactory(() => WalletDeleteCubit(walletDeleteUseCase: sl()));
  }
}

