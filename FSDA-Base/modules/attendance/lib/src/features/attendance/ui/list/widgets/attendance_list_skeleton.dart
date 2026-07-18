import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import 'parts/attendance_list_item_skeleton.dart';

class AttendanceListSkeleton extends StatelessWidget {
  final int itemCount;
  const AttendanceListSkeleton({super.key, this.itemCount = 10});

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
      itemBuilder: (context, index) {
        return const AttendanceListItemSkeleton();
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: itemCount,
    );
  }
}
