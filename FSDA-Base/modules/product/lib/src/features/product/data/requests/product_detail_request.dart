import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/params/product_detail_param.dart';

part 'product_detail_request.freezed.dart';
part 'product_detail_request.g.dart';

@freezed
abstract class ProductDetailRequest with _$ProductDetailRequest {
  const ProductDetailRequest._();

  const factory ProductDetailRequest({required int id}) = _ProductDetailRequest;

  factory ProductDetailRequest.fromJson(Map<String, Object?> json) =>
      _$ProductDetailRequestFromJson(json);

  factory ProductDetailRequest.fromParam(ProductDetailParam param) {
    return ProductDetailRequest(id: param.id);
  }
}
