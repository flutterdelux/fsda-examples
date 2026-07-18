import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/product.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class ProductDetailPage extends StatelessWidget with PageProviderMixin {
  final int id;
  const ProductDetailPage({super.key, required this.id});

  void _getProductDetail(BuildContext context) {
    context.read<ProductDetailCubit>().getProductDetail();
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [
        BlocProvider<ProductDetailCubit>(
          create: (_) => sl(param1: id)..getProductDetail(),
        ),
      ],
      listeners: [],
      builder: (context) {
        return ProductDetailView(content: _buildContent(context));
      },
    );
  }

  Widget _buildContent(BuildContext context) {
    return BlocBuilder<ProductDetailCubit, ProductDetailState>(
      builder: (_, state) => state.maybeWhen(
        orElse: () => const ProductDetailSkeleton(),
        loading: () => const ProductDetailSkeleton(),
        failure: (failure) => ProductDetailErrorFeedback(
          message: failure.localizeAny(context),
          onRetry: () => _getProductDetail(context),
        ),
        loaded: (data) => ProductDetailContent(
          product: data,
          onPullRefresh: () async {
            _getProductDetail(context);
          },
        ),
      ),
    );
  }
}
