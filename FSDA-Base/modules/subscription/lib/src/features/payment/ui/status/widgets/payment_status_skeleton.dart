import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class PaymentStatusSkeleton extends StatelessWidget {
  const PaymentStatusSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Icon Placeholder
          AppShimmer.circle(size: 240),

          AppGap.lg,

          // 2. Status Label Placeholder
          const AppShimmer(width: 140, height: 24, radius: 6),

          AppGap.sm,

          // 3. Status Message Placeholder
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            child: AppShimmer(width: 220, height: 16, radius: 4),
          ),

          AppGap.xl,

          // 4. AppCard Placeholder for InfoTiles (ID, Created At)
          const AppCard(
            margin: EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            children: [
              Padding(
                padding: EdgeInsets.all(AppSpacing.md),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppShimmer(width: 80, height: 16, radius: 4),
                    AppShimmer(width: 120, height: 16, radius: 4),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(AppSpacing.md),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppShimmer(width: 100, height: 16, radius: 4),
                    AppShimmer(width: 140, height: 16, radius: 4),
                  ],
                ),
              ),
            ],
          ),

          AppGap.lg,

          // 5. Button Placeholder
          const AppShimmer(width: 200, height: 54, radius: 12),
        ],
      ),
    );
  }
}
