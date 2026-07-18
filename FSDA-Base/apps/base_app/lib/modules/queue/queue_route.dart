import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/queue/pages/queue_take_page.dart';

abstract final class QueueRoute {
  static const _queue = 'queue';
  static const _queueTake = 'queue-take';

  static RouteBase get base => GoRoute(
    path: '/queue',
    name: _queue,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: 'queue_take',
        name: _queueTake,
        builder: (context, state) => const QueueTakePage(),
      ),
    ],
  );

  static Future<dynamic> toQueue(BuildContext context) {
    return context.pushNamed(_queue);
  }

  static Future<dynamic> toQueueTake(BuildContext context) {
    return context.pushNamed(_queueTake);
  }
}
