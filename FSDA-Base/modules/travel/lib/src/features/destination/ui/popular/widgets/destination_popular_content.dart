import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/destination_entity.dart';
import 'parts/destination_popular_item.dart';

class DestinationPopularContent extends StatelessWidget {
  static const height = 280.0;

  final List<DestinationEntity> list;
  final void Function(DestinationEntity item) onItemTap;
  const DestinationPopularContent({
    super.key,
    required this.list,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        separatorBuilder: (context, index) => AppGap.md,
        itemBuilder: (context, index) {
          final destination = list[index];
          return DestinationPopularItem(
            destination: destination,
            onTap: () => onItemTap(destination),
          );
        },
      ),
    );
  }
}
