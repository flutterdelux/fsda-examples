import 'package:http/http.dart' as http;

import 'di.dart';

Future<void> externalDI() async {
  sl.registerLazySingleton<http.Client>(
    () => http.Client(),
  );
}
