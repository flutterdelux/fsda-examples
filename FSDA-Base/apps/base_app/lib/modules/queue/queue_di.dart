import 'package:queue/queue.dart';

import '../../core/di/di.dart';

abstract final class QueueDi {
  static void register() {
    // reg feature di
    _queueDi();
  }


  // queue feature
  static void _queueDi() {
    // Datasources
    sl.registerLazySingleton<QueueRemoteDataSource>(() => QueueRemoteDataSourceImpl(apiClient: sl()));

    // Repositories
    sl.registerLazySingleton<QueueRepository>(() => QueueRepositoryImpl(appLogger: sl(param1: 'QueueRepository'), queueRemoteDataSource: sl()));

    // Usecases
    sl.registerLazySingleton(() => QueueTakeUseCase(queueRepository: sl()));

    // Logic (Cubits/Blocs)
    sl.registerFactory(() => QueueTakeCubit(queueTakeUseCase: sl()));
  }
}

