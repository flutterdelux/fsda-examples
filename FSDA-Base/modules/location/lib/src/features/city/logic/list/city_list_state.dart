import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/city_entity.dart';
import '../../domain/params/city_list_param.dart';

part 'city_list_state.freezed.dart';

@freezed
abstract class CityListState with _$CityListState {
  const factory CityListState({
    @Default([]) List<CityEntity> list,
    @Default(false) bool hasReachedMax,
    @Default(false) bool isLoading,
    Failure? failure,
    @Default(CityListParam()) CityListParam param,
  }) = _CityListState;
}
