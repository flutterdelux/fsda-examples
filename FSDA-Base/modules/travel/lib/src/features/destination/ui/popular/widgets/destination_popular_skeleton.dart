import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import 'destination_popular_content.dart';
import 'parts/destination_popular_item_skeleton.dart';

class DestinationPopularSkeleton extends StatelessWidget {
  final int itemCount;
  const DestinationPopularSkeleton({super.key, this.itemCount = 4});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DestinationPopularContent.height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        separatorBuilder: (context, index) => AppGap.md,
        itemBuilder: (context, index) {
          return const DestinationPopularItemSkeleton();
        },
      ),
    );
  }
}
