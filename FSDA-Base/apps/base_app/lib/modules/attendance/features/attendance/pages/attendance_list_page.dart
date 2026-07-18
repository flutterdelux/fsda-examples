import 'package:app_ui/app_ui.dart';
import 'package:attendance/attendance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class AttendanceListPage extends StatelessWidget with PageProviderMixin {
  const AttendanceListPage({super.key});

  void _refresh(BuildContext context) {
    context.read<AttendanceListCubit>().watchAttendanceList();
  }

  void _onItemTap(BuildContext context, AttendanceEntity item) {
    context.showSuccessSnackbar('Tapped on: ${item.id}');
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [
        BlocProvider<AttendanceListCubit>(
          create: (_) => sl()..watchAttendanceList(),
        ),
      ],
      listeners: [],
      builder: (context) {
        return AttendanceListView(content: _buildContent(context));
      },
    );
  }

  Widget _buildContent(BuildContext context) {
    return BlocBuilder<AttendanceListCubit, AttendanceListState>(
      builder: (_, state) => state.maybeWhen(
        orElse: () => const AttendanceListSkeleton(),
        loading: () => const AttendanceListSkeleton(),
        failure: (failure) => AttendanceListErrorFeedback(
          message: failure.localizeAny(context),
          onRetry: () => _refresh(context),
        ),
        loaded: (data) => data.isEmpty
            ? AttendanceListEmptyFeedback(onRefresh: () => _refresh(context))
            : AttendanceListContent(
                list: data,
                onItemTap: (item) => _onItemTap(context, item),
              ),
      ),
    );
  }
}
