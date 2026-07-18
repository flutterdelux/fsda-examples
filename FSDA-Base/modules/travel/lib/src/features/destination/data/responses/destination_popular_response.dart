import 'package:freezed_annotation/freezed_annotation.dart';

import '../dtos/destination_dto.dart';

part 'destination_popular_response.freezed.dart';
part 'destination_popular_response.g.dart';

@freezed
abstract class DestinationPopularResponse with _$DestinationPopularResponse {
  const factory DestinationPopularResponse({
    required String status,
    required String message,
    @JsonKey(fromJson: _destinationListFromJson) List<DestinationDto>? data,
    String? code,
    List<String>? errors,
  }) = _DestinationPopularResponse;

  factory DestinationPopularResponse.fromJson(Map<String, dynamic> json) =>
      _$DestinationPopularResponseFromJson(json);
}

List<DestinationDto>? _destinationListFromJson(Object? json) {
  if (json is List) {
    return json
        .map((item) => DestinationDto.fromJson(item as Map<String, dynamic>))
        .toList();
  }
  return null;
}
