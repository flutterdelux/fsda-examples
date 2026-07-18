import 'package:freezed_annotation/freezed_annotation.dart';

import '../dtos/queue_dto.dart';

part 'queue_take_response.freezed.dart';
part 'queue_take_response.g.dart';

@freezed
abstract class QueueTakeResponse with _$QueueTakeResponse {
  const factory QueueTakeResponse({
    required String status,
    required String message,
    @JsonKey(fromJson: _queueFromJson) QueueDto? data,
    String? code,
    List<String>? errors,
  }) = _QueueTakeResponse;

  factory QueueTakeResponse.fromJson(Map<String, dynamic> json) =>
      _$QueueTakeResponseFromJson(json);
}

QueueDto? _queueFromJson(Object? json) {
  if (json is Map) {
    return QueueDto.fromJson(json as Map<String, dynamic>);
  }
  return null;
}
