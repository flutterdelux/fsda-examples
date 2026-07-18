import 'package:location/location.dart';

import '../../core/di/di.dart';

abstract final class LocationDi {
  static void register() {
    // reg feature di
    _cityDi();
  }


  // city feature
  static void _cityDi() {
    // Datasources
    sl.registerLazySingleton<CityRemoteDataSource>(() => CityRemoteDataSourceImpl(apiClient: sl()));

    // Repositories
    sl.registerLazySingleton<CityRepository>(() => CityRepositoryImpl(appLogger: sl(param1: 'CityRepository'), cityRemoteDataSource: sl()));

    // Usecases
    sl.registerLazySingleton(() => CityListUseCase(cityRepository: sl()));

    // Logic (Cubits/Blocs)
    sl.registerFactory(() => CityListCubit(cityListUseCase: sl()));
  }
}

