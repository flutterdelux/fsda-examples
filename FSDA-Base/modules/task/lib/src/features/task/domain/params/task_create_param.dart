import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_create_param.freezed.dart';

@freezed
abstract class TaskCreateParam with _$TaskCreateParam {
  const factory TaskCreateParam({
    required String title,
    required String description,
  }) = _TaskCreateParam;
}
