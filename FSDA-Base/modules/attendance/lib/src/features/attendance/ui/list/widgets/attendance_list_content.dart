import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../domain/entities/attendance_entity.dart';
import 'parts/attendance_list_item.dart';

class AttendanceListContent extends StatelessWidget {
  final List<AttendanceEntity> list;
  final void Function(AttendanceEntity item) onItemTap;
  const AttendanceListContent({
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
        final attendance = list[index];
        return AttendanceListItem(
          index: index,
          attendance: attendance,
          onTap: () => onItemTap(attendance),
        );
      },
    );
  }
}
