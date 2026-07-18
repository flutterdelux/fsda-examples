import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import 'parts/city_list_item_skeleton.dart';

class CityListSkeleton extends StatelessWidget {
  final int itemCount;
  const CityListSkeleton({super.key, this.itemCount = 10});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const CityListItemSkeleton(),
      itemCount: itemCount,
      padding: const EdgeInsets.all(AppSpacing.screen),
      separatorBuilder: (context, index) => AppGap.md,
    );
  }
}
