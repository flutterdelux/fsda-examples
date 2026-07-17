import 'package:freezed_annotation/freezed_annotation.dart';

import '../dtos/destination_dto.dart';

part 'destination_list_response.freezed.dart';
part 'destination_list_response.g.dart';

@freezed
abstract class DestinationListResponse with _$DestinationListResponse {
  const factory DestinationListResponse({
    required String status,
    required String message,
    @JsonKey(fromJson: _destinationListFromJson) List<DestinationDto>? data,
    String? code,
    List<String>? errors,
  }) = _DestinationListResponse;

  factory DestinationListResponse.fromJson(Map<String, dynamic> json) =>
      _$DestinationListResponseFromJson(json);
}

List<DestinationDto>? _destinationListFromJson(Object? json) {
  if (json is List) {
    return json
        .map((item) => DestinationDto.fromJson(item as Map<String, dynamic>))
        .toList();
  }
  return null;
}
