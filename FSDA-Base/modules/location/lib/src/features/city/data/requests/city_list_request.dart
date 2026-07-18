import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/params/city_list_param.dart';

part 'city_list_request.freezed.dart';
part 'city_list_request.g.dart';

@freezed
abstract class CityListRequest with _$CityListRequest {
  const CityListRequest._();

  const factory CityListRequest({required int page, required int pageSize}) =
      _CityListRequest;

  factory CityListRequest.fromJson(Map<String, Object?> json) =>
      _$CityListRequestFromJson(json);

  factory CityListRequest.fromParam(CityListParam param) {
    return CityListRequest(page: param.page, pageSize: param.pageSize);
  }
}
