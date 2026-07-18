import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/product/pages/product_detail_page.dart';

abstract final class ProductRoute {
  static const _product = 'product';
  static const _productDetail = 'product-detail';

  static RouteBase get base => GoRoute(
    path: '/product',
    name: _product,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: ':id',
        name: _productDetail,
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '');
          if (id == null) {
            return const NotFoundPage();
          }
          return ProductDetailPage(id: id);
        },
      ),
    ],
  );

  static Future<dynamic> toProduct(BuildContext context) {
    return context.pushNamed(_product);
  }

  static Future<dynamic> toProductDetail(
    BuildContext context, {
    required int id,
  }) {
    return context.pushNamed(
      _productDetail,
      pathParameters: {'id': id.toString()},
    );
  }
}
