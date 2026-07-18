import 'package:freezed_annotation/freezed_annotation.dart';

import '../dtos/product_dto.dart';

part 'product_detail_response.freezed.dart';
part 'product_detail_response.g.dart';

@freezed
abstract class ProductDetailResponse with _$ProductDetailResponse {
  const ProductDetailResponse._();

  const factory ProductDetailResponse({
    required String status,
    required String message,
    @JsonKey(fromJson: _productFromJson) ProductDto? data,
    String? code,
    List<String>? errors,
  }) = _ProductDetailResponse;

  factory ProductDetailResponse.fromJson(Map<String, Object?> json) =>
      _$ProductDetailResponseFromJson(json);
}

ProductDto? _productFromJson(Object? json) {
  if (json is Map) {
    return ProductDto.fromJson(json as Map<String, dynamic>);
  }
  return null;
}
