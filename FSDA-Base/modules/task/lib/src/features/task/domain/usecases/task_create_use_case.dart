import 'package:app_core/app_core.dart';

import '../entities/task_entity.dart';
import '../params/task_create_param.dart';
import '../repositories/task_repository.dart';

class TaskCreateUseCase extends UseCase<TaskEntity, TaskCreateParam> {
  final TaskRepository _repository;

  const TaskCreateUseCase({required TaskRepository taskRepository})
    : _repository = taskRepository;

  @override
  AsyncResult<TaskEntity> call(TaskCreateParam param) {
    return _repository.createTask(param);
  }
}
