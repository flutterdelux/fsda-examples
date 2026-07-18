import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class QueueTakeSkeleton extends StatelessWidget {
  const QueueTakeSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppShimmer(width: 140, height: 40, radius: 8),
          AppGap.md,
          AppShimmer(width: 100, height: 16),
          AppGap.sm,
          AppShimmer(width: 120, height: 36, radius: AppRadius.button),
        ],
      ),
    );
  }
}
