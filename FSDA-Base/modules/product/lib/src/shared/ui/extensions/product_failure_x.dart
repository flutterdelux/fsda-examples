import 'package:flutter/material.dart';

import '../../../generated/product_localizations.dart';
import '../../domain/errors/product_failure.dart';

extension ProductFailureX on ProductFailure {
  String localize(BuildContext context) {
    final l10n = ProductLocalizations.of(context)!;
    return switch (this) {
      ProductFailure.productNotFound => l10n.failureProductNotFound,
    };
  }
}
