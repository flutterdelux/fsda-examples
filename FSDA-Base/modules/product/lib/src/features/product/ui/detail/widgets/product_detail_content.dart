import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/product_entity.dart';

class ProductDetailContent extends StatelessWidget {
  final ProductEntity product;
  final Future<void> Function() onPullRefresh;
  const ProductDetailContent({
    super.key,
    required this.product,
    required this.onPullRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return RefreshIndicator.adaptive(
      onRefresh: onPullRefresh,
      child: ListView(
        padding: const EdgeInsets.all(AppSpacing.screen),
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: AppNetworkImage(
              url: product.imageUrl,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          AppGap.md,
          Row(
            children: [
              Expanded(child: Text(product.name, style: textTheme.titleLarge)),
              Text(
                '\$${product.price}',
                style: textTheme.bodyLarge?.copyWith(
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
          AppGap.md,
          Text(product.description, style: textTheme.bodyMedium),
        ],
      ),
    );
  }
}
