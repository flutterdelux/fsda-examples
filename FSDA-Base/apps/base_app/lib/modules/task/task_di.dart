import 'package:task/task.dart';

import '../../core/di/di.dart';

abstract final class TaskDi {
  static void register() {
    // reg feature di
    _taskDi();
  }


  // task feature
  static void _taskDi() {
    // Datasources
    sl.registerLazySingleton<TaskRemoteDataSource>(() => TaskRemoteDataSourceImpl(apiClient: sl()));

    // Repositories
    sl.registerLazySingleton<TaskRepository>(() => TaskRepositoryImpl(appLogger: sl(param1: 'TaskRepository'), taskRemoteDataSource: sl()));

    // Usecases
    sl.registerLazySingleton(() => TaskCreateUseCase(taskRepository: sl()));

    // Logic (Cubits/Blocs)
    sl.registerFactory(() => TaskCreateFormCubit());
    sl.registerFactory(() => TaskCreateCubit(useCase: sl()));
  }
}

