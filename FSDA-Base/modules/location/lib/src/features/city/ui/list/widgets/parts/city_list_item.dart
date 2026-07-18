import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/city_entity.dart';

class CityListItem extends StatelessWidget {
  final CityEntity city;
  final int number;
  final VoidCallback? onTap;
  const CityListItem({
    super.key,
    required this.city,
    required this.number,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppListTile(
      leading: AppLeadingIndex(number: number),
      title: city.name,
      subtitle: city.country,
      onTap: onTap,
      includeChevron: true,
    );
  }
}
