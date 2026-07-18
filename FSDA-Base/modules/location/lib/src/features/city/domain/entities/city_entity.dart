import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_entity.freezed.dart';

@freezed
abstract class CityEntity with _$CityEntity {
  const factory CityEntity({
    required int id,
    required String name,
    required String state,
    required String country,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CityEntity;
}
