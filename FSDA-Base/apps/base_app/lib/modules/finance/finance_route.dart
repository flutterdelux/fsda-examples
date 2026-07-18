import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/wallet/pages/wallet_detail_page.dart';

abstract final class FinanceRoute {
  static const _finance = 'finance';
  static const _walletDetail = 'wallet-detail';

  static RouteBase get base => GoRoute(
    path: '/finance',
    name: _finance,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: 'wallet/:id',
        name: _walletDetail,
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '');
          if (id == null) {
            return const NotFoundPage();
          }
          return WalletDetailPage(id: id);
        },
      ),
    ],
  );

  static Future<dynamic> toFinance(BuildContext context) {
    return context.pushNamed(_finance);
  }

  static Future<dynamic> toWalletDetail(
    BuildContext context, {
    required int id,
  }) {
    return context.pushNamed(
      _walletDetail,
      pathParameters: {'id': id.toString()},
    );
  }
}
