import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/destination_entity.dart';

class DestinationListItem extends StatelessWidget {
  final int index;
  final DestinationEntity destination;
  final void Function() onTap;
  const DestinationListItem({
    super.key,
    required this.index,
    required this.destination,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppListTile(
      leading: AppNetworkImage(
        url: destination.imageUrl,
        width: 48,
        height: 48,
        borderRadius: BorderRadius.circular(8),
      ),
      title: destination.name,
      subtitle: destination.description,
      includeChevron: true,
      onTap: onTap,
    );
  }
}
