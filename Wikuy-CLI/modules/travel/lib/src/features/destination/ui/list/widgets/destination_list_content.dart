import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../domain/entities/destination_entity.dart';
import 'parts/destination_list_item.dart';

class DestinationListContent extends StatelessWidget {
  final List<DestinationEntity> list;
  final void Function(DestinationEntity item) onItemTap;
  const DestinationListContent({
    super.key,
    required this.list,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);
    return ListView.separated(
      padding: EdgeInsets.fromLTRB(
        0,
        0,
        0,
        AppSpacing.screen + padding.bottom,
      ),
      itemCount: list.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final destination = list[index];
        return DestinationListItem(
          index: index,
          destination: destination,
          onTap: () => onItemTap(destination),
        );
      },
    );
  }
}
