import 'package:app_core/app_core.dart';
import 'package:infra_http/infra_http.dart';
import 'package:infra_logging/infra_logging.dart';
import 'package:logging/logging.dart';

import '../externals/fdelux_mock_config.dart';
import '../externals/network_timeout_config.dart';
import 'di.dart';

Future<void> coreDI() async {
  sl.registerLazySingleton<ApiClient>(
    () => HttpApiClient(
      client: sl(),
      baseUrl: FDeluxMockConfig.cloudRunBaseUrl,
      requestTimeout: NetworkTimeoutConfig.requestTimeout,
      streamConnectionTimeout: NetworkTimeoutConfig.streamConnectionTimeout,
    ),
  );

  sl.registerFactoryParam<AppLogger, String, void>(
    (name, _) => LoggingImpl(logger: Logger(name)),
  );
}
