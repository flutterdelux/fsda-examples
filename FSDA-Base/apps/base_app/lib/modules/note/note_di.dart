import 'package:note/note.dart';

import '../../core/di/di.dart';

abstract final class NoteDi {
  static void register() {
    // reg feature di
    _noteDi();
  }


  // note feature
  static void _noteDi() {
    // Datasources
    sl.registerLazySingleton<NoteRemoteDataSource>(() => NoteRemoteDataSourceImpl(apiClient: sl()));
    sl.registerLazySingleton<NoteLocalDataSource>(() => NoteLocalDataSourceImpl(client: sl()));

    // Repositories
    sl.registerLazySingleton<NoteRepository>(() => NoteRepositoryImpl(appLogger: sl(param1: 'NoteRepository'), networkInfo: sl(), noteLocalDataSource: sl(), noteRemoteDataSource: sl()));

    // Usecases
    sl.registerLazySingleton(() => NoteListUseCase(noteRepository: sl()));

    // Logic (Cubits/Blocs)
    sl.registerFactory(() => NoteListCubit(useCase: sl()));
  }
}

