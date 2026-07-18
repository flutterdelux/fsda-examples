import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:queue/queue.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class QueueTakePage extends StatelessWidget with PageProviderMixin {
  const QueueTakePage({super.key});

  void _takeQueue(BuildContext context) {
    context.read<QueueTakeCubit>().takeQueue();
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [BlocProvider<QueueTakeCubit>(create: (_) => sl())],
      listeners: [],
      builder: (context) {
        return QueueTakeView(content: _buildContent(context));
      },
    );
  }

  Widget _buildContent(BuildContext context) {
    return BlocBuilder<QueueTakeCubit, QueueTakeState>(
      builder: (_, state) => state.when(
        initial: () => QueueTakeInitialFeedback(
          onTakeQueue: () {
            _takeQueue(context);
          },
        ),
        loading: () => const QueueTakeSkeleton(),
        failure: (failure) => QueueTakeErrorFeedback(
          message: failure.localizeAny(context),
          onRetry: () => _takeQueue(context),
        ),
        success: (data) => QueueTakeContent(
          queue: data,
          onTakeQueue: () {
            _takeQueue(context);
          },
        ),
      ),
    );
  }
}
