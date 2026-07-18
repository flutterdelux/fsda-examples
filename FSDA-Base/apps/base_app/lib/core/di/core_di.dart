import 'package:app_core/app_core.dart';
import 'package:infra_connectivity_plus/infra_connectivity_plus.dart';
import 'package:infra_dio/infra_dio.dart';
import 'package:infra_logging/infra_logging.dart';
import 'package:infra_sqflite/infra_sqflite.dart';
import 'package:logging/logging.dart';

import '../externals/fdelux_mock_config.dart';
import '../externals/network_timeout_config.dart';
import 'di.dart';

Future<void> coreDI() async {
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(connectivity: sl()),
  );

  sl.registerLazySingleton<ApiClient>(
    () => DioApiClient(
      dio: sl(),
      baseUrl: FDeluxMockConfig.cloudRunBaseUrl,
      connectTimeout: NetworkTimeoutConfig.connectTimeout,
      sendTimeout: NetworkTimeoutConfig.sendTimeout,
      receiveTimeout: NetworkTimeoutConfig.receiveTimeout,
      streamConnectionTimeout: NetworkTimeoutConfig.streamConnectionTimeout,
    ),
  );

  sl.registerFactoryParam<AppLogger, String, void>(
    (name, _) => LoggingImpl(logger: Logger(name)),
  );

  sl.registerLazySingleton<DatabaseClient>(
    () => SqfliteDatabaseClient(database: sl()),
  );
}
