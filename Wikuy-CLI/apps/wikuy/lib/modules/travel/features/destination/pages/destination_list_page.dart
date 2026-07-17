import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/travel.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class DestinationListPage extends StatelessWidget with PageProviderMixin {
  const DestinationListPage({super.key});

  void _runPrimaryAction(BuildContext context) {
    context.read<DestinationListCubit>().getDestinationList();
  }

  void _onItemTap(BuildContext context, DestinationEntity item) {
    context.showSuccessSnackbar('Tapped on: ${item.name}');
  }

  Widget _buildPrimaryContent(BuildContext context) {
    return BlocBuilder<DestinationListCubit, DestinationListState>(
      builder: (_, state) => state.maybeWhen(
        orElse: () => const DestinationListSkeleton(),
        loading: () => const DestinationListSkeleton(),
        failure: (failure) => DestinationListErrorFeedback(
                message: failure.localizeAny(context),
                onRetry: () => _runPrimaryAction(context),
              ),
        loaded: (data) => data.isEmpty ? DestinationListEmptyFeedback(
                  onRefresh: () => _runPrimaryAction(context),
                ) : DestinationListContent(
                  list: data,
                  onItemTap: (item) => _onItemTap(context, item),
                ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [
        BlocProvider<DestinationListCubit>(create: (_) => sl()..getDestinationList()),
      ],
      listeners: [],
      builder: (context) {
        return DestinationListView(
          content: _buildPrimaryContent(context),
        );
      },
    );
  }
}
