import 'package:get_it/get_it.dart';

import '../../modules/attendance/attendance_di.dart';
import '../../modules/finance/finance_di.dart';
import '../../modules/inbox/inbox_di.dart';
import '../../modules/location/location_di.dart';
import '../../modules/note/note_di.dart';
import '../../modules/product/product_di.dart';
import '../../modules/queue/queue_di.dart';
import '../../modules/subscription/subscription_di.dart';
import '../../modules/task/task_di.dart';
import '../../modules/travel/travel_di.dart';
import 'core_di.dart';
import 'external_di.dart';

final sl = GetIt.instance;

Future<void> initDI() async {
  await externalDI();
  await coreDI();
  await sl.allReady();

  // Modules DI
  InboxDi.register();
  FinanceDi.register();
  QueueDi.register();
  TaskDi.register();
  TravelDi.register();
  ProductDi.register();
  LocationDi.register();
  AttendanceDi.register();
  SubscriptionDi.register();
  NoteDi.register();
}
