import 'package:travel/travel.dart';

import '../../core/di/di.dart';

abstract final class TravelDi {
  static void register() {
    // reg feature di
    _destinationDi();
  }


  // destination feature
  static void _destinationDi() {
    // Datasources
    sl.registerLazySingleton<DestinationRemoteDataSource>(() => DestinationRemoteDataSourceImpl(apiClient: sl()));

    // Repositories
    sl.registerLazySingleton<DestinationRepository>(() => DestinationRepositoryImpl(appLogger: sl(param1: 'DestinationRepository'), destinationRemoteDataSource: sl()));

    // Usecases
    sl.registerLazySingleton(() => DestinationListUseCase(destinationRepository: sl()));

    // Logic (Cubits/Blocs)
    sl.registerFactory(() => DestinationListCubit(destinationListUseCase: sl()));
  }
}

