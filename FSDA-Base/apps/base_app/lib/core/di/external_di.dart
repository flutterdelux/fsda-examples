import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../externals/sqflite_config.dart';
import 'di.dart';

Future<void> externalDI() async {
  sl.registerLazySingleton<Connectivity>(() => Connectivity());

  sl.registerLazySingleton<Dio>(() => Dio());

  sl.registerSingletonAsync<sqflite.Database>(() => SqfliteConfig.init());
}
