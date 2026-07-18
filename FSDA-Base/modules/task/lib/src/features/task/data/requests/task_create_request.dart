import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/params/task_create_param.dart';

part 'task_create_request.freezed.dart';
part 'task_create_request.g.dart';

@freezed
abstract class TaskCreateRequest with _$TaskCreateRequest {
  const TaskCreateRequest._();

  const factory TaskCreateRequest({
    required String title,
    required String description,
  }) = _TaskCreateRequest;

  factory TaskCreateRequest.fromJson(Map<String, Object?> json) =>
      _$TaskCreateRequestFromJson(json);

  factory TaskCreateRequest.fromParam(TaskCreateParam param) {
    return TaskCreateRequest(
      title: param.title,
      description: param.description,
    );
  }
}
