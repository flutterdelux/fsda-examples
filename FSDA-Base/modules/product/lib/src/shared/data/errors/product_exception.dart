import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/errors/product_failure.dart';

part 'product_exception.freezed.dart';

@freezed
sealed class ProductException with _$ProductException implements AppException {
  const ProductException._();

  const factory ProductException.productNotFound({String? msg, StackTrace? st}) =
      _ProductNotFound;

  @override
  String get message => when(productNotFound: (msg, _) => msg ?? 'Product not found');

  @override
  StackTrace? get stackTrace => st;

  @override
  Failure toFailure() => when(productNotFound: (_, _) => ProductFailure.productNotFound);

  static AppException fromApiResponse(ApiResponse response, {StackTrace? st}) {
    return CoreException.fromException(response.body.toString(), st: st);
  }

  static AppException fromException(
    Object e, {
    StackTrace? st,
    bool isLocal = false,
  }) {
    if (e is AppException) {
      return e;
    }

    return CoreException.fromException(e, st: st, isLocal: isLocal);
  }
}
