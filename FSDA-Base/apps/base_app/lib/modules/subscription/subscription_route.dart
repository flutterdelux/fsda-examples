import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/payment/pages/payment_status_page.dart';

abstract final class SubscriptionRoute {
  static const _subscription = 'subscription';
  static const _paymentStatus = 'payment-status';

  static RouteBase get base => GoRoute(
    path: '/subscription',
    name: _subscription,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: 'payment/:id/status',
        name: _paymentStatus,
        builder: (context, state) {
          final id = state.pathParameters['id'];
          if (id == null) {
            return const NotFoundPage();
          }
          return PaymentStatusPage(id: id);
        },
      ),
    ],
  );

  static Future<dynamic> toSubscription(BuildContext context) {
    return context.pushNamed(_subscription);
  }

  static Future<dynamic> toPaymentStatus(
    BuildContext context, {
    required String id,
  }) {
    return context.pushNamed(_paymentStatus, pathParameters: {'id': id});
  }
}
