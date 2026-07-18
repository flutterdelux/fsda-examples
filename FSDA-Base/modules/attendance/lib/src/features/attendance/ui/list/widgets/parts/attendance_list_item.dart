import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/attendance_entity.dart';
import '../../../shared/extensions/attendance_type_x.dart';

class AttendanceListItem extends StatelessWidget {
  final int index;
  final AttendanceEntity attendance;
  final void Function() onTap;
  const AttendanceListItem({
    super.key,
    required this.index,
    required this.attendance,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppListTile(
      leading: AppLeadingIcon(icon: attendance.type.icon),
      title: attendance.userId,
      subtitle: attendance.clockAt.toString(),
      includeChevron: true,
      onTap: onTap,
    );
  }
}
