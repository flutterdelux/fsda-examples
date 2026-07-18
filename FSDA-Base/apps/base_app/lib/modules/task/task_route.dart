import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/task/pages/task_create_page.dart';

abstract final class TaskRoute {
  static const _task = 'task';
  static const _taskCreate = 'task-create';

  static RouteBase get base => GoRoute(
    path: '/task',
    name: _task,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: 'task_create',
        name: _taskCreate,
        builder: (context, state) => const TaskCreatePage(),
      ),
    ],
  );

  static Future<dynamic> toTask(BuildContext context) {
    return context.pushNamed(_task);
  }

  static Future<dynamic> toTaskCreate(BuildContext context) {
    return context.pushNamed(_taskCreate);
  }
}
