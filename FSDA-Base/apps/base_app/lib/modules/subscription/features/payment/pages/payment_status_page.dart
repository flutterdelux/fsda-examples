import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:subscription/subscription.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class PaymentStatusPage extends StatelessWidget with PageProviderMixin {
  final String id;
  const PaymentStatusPage({super.key, required this.id});

  void _refresh(BuildContext context) {
    context.read<PaymentStatusCubit>().watchPaymentStatus();
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [
        BlocProvider<PaymentStatusCubit>(
          create: (_) => sl(param1: id)..watchPaymentStatus(),
        ),
      ],
      listeners: [],
      builder: (context) {
        return PaymentStatusView(content: _buildContent(context));
      },
    );
  }

  Widget _buildContent(BuildContext context) {
    return BlocBuilder<PaymentStatusCubit, PaymentStatusState>(
      builder: (_, state) => state.maybeWhen(
        orElse: () => const PaymentStatusSkeleton(),
        loading: () => const PaymentStatusSkeleton(),
        failure: (failure) => PaymentStatusErrorFeedback(
          message: failure.localizeAny(context),
          onRetry: () => _refresh(context),
        ),
        loaded: (data) => PaymentStatusContent(payment: data),
      ),
    );
  }
}
