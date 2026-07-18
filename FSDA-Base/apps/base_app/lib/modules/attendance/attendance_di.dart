import 'package:attendance/attendance.dart';

import '../../core/di/di.dart';

abstract final class AttendanceDi {
  static void register() {
    // reg feature di
    _attendanceDi();
  }


  // attendance feature
  static void _attendanceDi() {
    // Datasources
    sl.registerLazySingleton<AttendanceRemoteDataSource>(() => AttendanceRemoteDataSourceImpl(apiClient: sl()));

    // Repositories
    sl.registerLazySingleton<AttendanceRepository>(() => AttendanceRepositoryImpl(appLogger: sl(param1: 'AttendanceRepository'), attendanceRemoteDataSource: sl()));

    // Usecases
    sl.registerLazySingleton(() => AttendanceListUseCase(attendanceRepository: sl()));

    // Logic (Cubits/Blocs)
    sl.registerFactory(() => AttendanceListCubit(attendanceListUseCase: sl()));
  }
}

