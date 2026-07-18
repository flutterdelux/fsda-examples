import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class ProductDetailSkeleton extends StatelessWidget {
  const ProductDetailSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screen),
      children: [
        const AspectRatio(aspectRatio: 1, child: AppShimmer(radius: 16)),
        AppGap.md,
        const Row(
          children: [
            Expanded(child: AppShimmer(height: 24, radius: 6)),
            AppGap.md,
            AppShimmer(width: 72, height: 20, radius: 6),
          ],
        ),
        AppGap.md,
        const AppShimmer(height: 16),
        AppGap.sm,
        const AppShimmer(height: 16),
        AppGap.sm,
        const AppShimmer(width: 220, height: 16),
      ],
    );
  }
}
