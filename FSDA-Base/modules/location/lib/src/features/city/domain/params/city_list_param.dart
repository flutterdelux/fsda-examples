import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_list_param.freezed.dart';

@freezed
abstract class CityListParam with _$CityListParam {
  const factory CityListParam({
    @Default(1) int page,
    @Default(15) int pageSize,
  }) = _CityListParam;
}
