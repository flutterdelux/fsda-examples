import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/travel.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class DestinationPage extends StatelessWidget with PageProviderMixin {
  const DestinationPage({super.key});

  void _getDestinationPopular(BuildContext context) {
    context.read<DestinationPopularCubit>().getDestinationPopular();
  }

  Widget _destinationPopularSection() {
    return DestinationPopularSection(
      content: BlocBuilder<DestinationPopularCubit, DestinationPopularState>(
        builder: (context, state) {
          return state.when(
            initial: () => const DestinationPopularSkeleton(),
            loading: () => const DestinationPopularSkeleton(),
            failure: (failure) => DestinationPopularErrorFeedback(
              message: failure.localizeAny(context),
              onRetry: () {
                _getDestinationPopular(context);
              },
            ),
            loaded: (data) {
              if (data.isEmpty) {
                return DestinationPopularEmptyFeedback(
                  onRefresh: () {
                    _getDestinationPopular(context);
                  },
                );
              }
              return DestinationPopularContent(
                list: data,
                onItemTap: (item) {
                  context.showSuccessSnackbar(
                    'Destination tapped: ${item.name}',
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [
        BlocProvider<DestinationPopularCubit>(
          create: (_) => sl()..getDestinationPopular(),
        ),
      ],
      listeners: [],
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text('DestinationPage')),
          body: ListView(children: [_destinationPopularSection()]),
        );
      },
    );
  }
}
