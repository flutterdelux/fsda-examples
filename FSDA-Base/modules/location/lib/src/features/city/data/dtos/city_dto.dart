import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/city_entity.dart';

part 'city_dto.freezed.dart';
part 'city_dto.g.dart';

@freezed
abstract class CityDto with _$CityDto {
  const CityDto._();

  const factory CityDto({
    required int id,
    required String name,
    required String state,
    required String country,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _CityDto;

  factory CityDto.fromJson(Map<String, Object?> json) =>
      _$CityDtoFromJson(json);

  CityEntity toEntity() {
    return CityEntity(
      id: id,
      name: name,
      state: state,
      country: country,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
