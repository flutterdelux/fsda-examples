import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/inbox/pages/inbox_list_page.dart';

abstract final class InboxRoute {
  static const _inbox = 'inbox';
  static const _inboxList = 'inbox-list';

  static RouteBase get base => GoRoute(
    path: '/inbox',
    name: _inbox,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: 'inbox_list',
        name: _inboxList,
        builder: (context, state) => const InboxListPage(),
      ),
    ],
  );

  static Future<dynamic> toInbox(BuildContext context) {
    return context.pushNamed(_inbox);
  }

  static Future<dynamic> toInboxList(BuildContext context) {
    return context.pushNamed(_inboxList);
  }
}
