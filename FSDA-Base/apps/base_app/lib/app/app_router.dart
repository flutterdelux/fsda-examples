import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/pages/not_found_page.dart';
import '../modules/attendance/attendance_route.dart';
import '../modules/finance/finance_route.dart';
import '../modules/inbox/inbox_route.dart';
import '../modules/location/location_route.dart';
import '../modules/note/note_route.dart';
import '../modules/product/product_route.dart';
import '../modules/queue/queue_route.dart';
import '../modules/subscription/subscription_route.dart';
import '../modules/task/task_route.dart';
import '../modules/travel/travel_route.dart';
import 'dashboard/dashboard_route.dart';
import 'startup.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static const startup = 'startup';
  static const startupPath = '/';

  late final router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: startupPath,
    redirect: _redirect,
    debugLogDiagnostics: false,
    errorBuilder: (context, state) => const NotFoundPage(),
    routes: [
      _mainRoute,
      DashboardRoute.base,
      // ...inject here
      InboxRoute.base,
      FinanceRoute.base,
      QueueRoute.base,
      TaskRoute.base,
      TravelRoute.base,
      ProductRoute.base,
      LocationRoute.base,
      AttendanceRoute.base,
      SubscriptionRoute.base,
      NoteRoute.base,
    ],
  );

  FutureOr<String?> _redirect(BuildContext context, GoRouterState state) async {
    return null;
  }

  RouteBase get _mainRoute => GoRoute(
    path: startupPath,
    name: startup,
    builder: (context, state) => const Startup(),
  );

  static void toStartup(BuildContext context) {
    context.goNamed(startup);
  }
}
