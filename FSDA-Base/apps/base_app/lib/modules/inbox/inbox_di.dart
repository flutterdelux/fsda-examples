import 'package:inbox/inbox.dart';

import '../../core/di/di.dart';

abstract final class InboxDi {
  static void register() {
    // reg feature di
    _inboxDi();
  }


  // inbox feature
  static void _inboxDi() {
    // Datasources
    sl.registerLazySingleton<InboxRemoteDataSource>(() => InboxRemoteDataSourceImpl(apiClient: sl()));

    // Repositories
    sl.registerLazySingleton<InboxRepository>(() => InboxRepositoryImpl(appLogger: sl(param1: 'InboxRepository'), inboxRemoteDataSource: sl()));

    // Usecases
    sl.registerLazySingleton(() => InboxMarkAllReadUseCase(inboxRepository: sl()));

    // Logic (Cubits/Blocs)
    sl.registerFactory(() => InboxMarkAllReadCubit(inboxMarkAllReadUseCase: sl()));
  }
}

