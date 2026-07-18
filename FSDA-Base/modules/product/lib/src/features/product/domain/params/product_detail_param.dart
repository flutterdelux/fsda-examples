import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_param.freezed.dart';

@freezed
abstract class ProductDetailParam with _$ProductDetailParam {
  const factory ProductDetailParam({required int id}) = _ProductDetailParam;
}
