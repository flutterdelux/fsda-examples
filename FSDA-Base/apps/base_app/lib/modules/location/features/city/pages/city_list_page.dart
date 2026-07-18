import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class CityListPage extends StatelessWidget with PageProviderMixin {
  const CityListPage({super.key});

  Future<void> _refresh(BuildContext context) {
    return context.read<CityListCubit>().refresh();
  }

  void _loadMore(BuildContext context) {
    context.read<CityListCubit>().loadMore();
  }

  void _onItemTap(BuildContext context, CityEntity item) {
    context.showSuccessSnackbar('City tapped: ${item.name}');
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [BlocProvider<CityListCubit>(create: (_) => sl()..init())],
      listeners: [],
      builder: (context) {
        return CityListView(content: _buildContent(context));
      },
    );
  }

  Widget _buildContent(BuildContext context) {
    return BlocBuilder<CityListCubit, CityListState>(
      builder: (_, state) {
        final isLoading = state.isLoading;
        final list = state.list;
        final isEmpty = list.isEmpty;
        final failure = state.failure;

        if (isEmpty && isLoading) {
          return const CityListSkeleton();
        }

        if (isEmpty && failure != null) {
          return CityListErrorFeedback(
            message: failure.localizeAny(context),
            onRetry: () => _refresh(context),
          );
        }

        if (isEmpty) {
          return CityListEmptyFeedback(onRefresh: () => _refresh(context));
        }

        return CityListContent(
          list: list,
          isLoadingMore: state.isLoading,
          onLoadMore: () => _loadMore(context),
          onPullRefresh: () => _refresh(context),
          onItemTap: (item) {
            _onItemTap(context, item);
          },
        );
      },
    );
  }
}
