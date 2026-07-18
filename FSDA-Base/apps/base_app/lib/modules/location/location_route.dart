import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/city/pages/city_list_page.dart';

abstract final class LocationRoute {
  static const _location = 'location';
  static const _cityList = 'city-list';

  static RouteBase get base => GoRoute(
    path: '/location',
    name: _location,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: 'city_list',
        name: _cityList,
        builder: (context, state) => const CityListPage(),
      ),
    ],
  );

  static Future<dynamic> toLocation(BuildContext context) {
    return context.pushNamed(_location);
  }

  static Future<dynamic> toCityList(BuildContext context) {
    return context.pushNamed(_cityList);
  }
}
