import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import 'destination_popular_item.dart';

class DestinationPopularItemSkeleton extends StatelessWidget {
  const DestinationPopularItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AspectRatio(
      aspectRatio: DestinationPopularItem.aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainer,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: const Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: AppSpacing.md,
              right: AppSpacing.md,
              bottom: AppSpacing.md,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Skeleton for title (titleMedium)
                  AppShimmer(width: 120, height: 18, radius: 4),

                  // Provide a small gap specifically for the skeleton to avoid sticking
                  SizedBox(height: 6),

                  // Skeleton for Subtitle
                  AppShimmer(width: 85, height: 10, radius: 2),                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
