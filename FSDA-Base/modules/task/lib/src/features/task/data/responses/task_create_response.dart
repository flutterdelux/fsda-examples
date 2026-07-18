import 'package:freezed_annotation/freezed_annotation.dart';

import '../dtos/task_dto.dart';

part 'task_create_response.freezed.dart';
part 'task_create_response.g.dart';

@freezed
abstract class TaskCreateResponse with _$TaskCreateResponse {
  const factory TaskCreateResponse({
    required String status,
    required String message,
    @JsonKey(fromJson: _taskFromJson) TaskDto? data,
    String? code,
    List<String>? errors,
  }) = _TaskCreateResponse;

  factory TaskCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskCreateResponseFromJson(json);
}

TaskDto? _taskFromJson(Object? json) {
  if (json is Map) {
    return TaskDto.fromJson(json as Map<String, dynamic>);
  }
  return null;
}
