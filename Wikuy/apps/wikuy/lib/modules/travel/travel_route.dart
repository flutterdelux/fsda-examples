import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/destination/pages/destination_list_page.dart';

abstract final class TravelRoute {
  static const _travel = 'travel';
  static const _destinationList = 'destination-list';

  static RouteBase get base => GoRoute(
    path: '/travel',
    name: _travel,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: 'destination-list',
        name: _destinationList,
        builder: (context, state) => const DestinationListPage(),
      ),
    ],
  );

  static Future<dynamic> toTravel(BuildContext context) {
    return context.pushNamed(_travel);
  }

  static Future<dynamic> toDestinationList(BuildContext context) {
    return context.pushNamed(_destinationList);
  }
}
