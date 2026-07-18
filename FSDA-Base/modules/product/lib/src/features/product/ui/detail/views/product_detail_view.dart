import 'package:flutter/material.dart';
import '../../../../../generated/product_localizations.dart';

class ProductDetailView extends StatelessWidget {
  final Widget content;
  const ProductDetailView({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final l10n = ProductLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.productDetailTitle)),
      body: content,
    );
  }
}
