// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityListRequest _$CityListRequestFromJson(Map<String, dynamic> json) =>
    _CityListRequest(
      page: (json['page'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
    );

Map<String, dynamic> _$CityListRequestToJson(_CityListRequest instance) =>
    <String, dynamic>{'page': instance.page, 'page_size': instance.pageSize};
