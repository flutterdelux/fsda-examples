import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/destination/pages/destination_page.dart';

abstract final class TravelRoute {
  static const _travel = 'travel';
  static const _destination = 'destination';

  static RouteBase get base => GoRoute(
    path: '/travel',
    name: _travel,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: 'destination',
        name: _destination,
        builder: (context, state) => const DestinationPage(),
      ),
    ],
  );

  static Future<dynamic> toTravel(BuildContext context) {
    return context.pushNamed(_travel);
  }

  static Future<dynamic> toDestination(BuildContext context) {
    return context.pushNamed(_destination);
  }
}
