// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDetailResponse _$ProductDetailResponseFromJson(
  Map<String, dynamic> json,
) => _ProductDetailResponse(
  status: json['status'] as String,
  message: json['message'] as String,
  data: _productFromJson(json['data']),
  code: json['code'] as String?,
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ProductDetailResponseToJson(
  _ProductDetailResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'code': instance.code,
  'errors': instance.errors,
};
