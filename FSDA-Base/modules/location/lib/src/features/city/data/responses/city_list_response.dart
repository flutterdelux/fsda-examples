import 'package:freezed_annotation/freezed_annotation.dart';

import '../dtos/city_dto.dart';

part 'city_list_response.freezed.dart';
part 'city_list_response.g.dart';

@freezed
abstract class CityListResponse with _$CityListResponse {
  const factory CityListResponse({
    required String status,
    required String message,
    Map<String, dynamic>? meta,
    @JsonKey(fromJson: _fromJson) List<CityDto>? data,
    String? code,
    List<String>? errors,
  }) = _CityListResponse;

  factory CityListResponse.fromJson(Map<String, dynamic> json) =>
      _$CityListResponseFromJson(json);
}

List<CityDto>? _fromJson(Object? json) {
  if (json is List) {
    return json
        .map((item) => CityDto.fromJson(item as Map<String, dynamic>))
        .toList();
  }
  return null;
}
