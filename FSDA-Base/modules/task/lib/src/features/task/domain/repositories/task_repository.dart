import 'package:app_core/app_core.dart';
import '../entities/task_entity.dart';
import '../params/task_create_param.dart';

abstract interface class TaskRepository {
  // ------- Retrieval -------

  // ------- Mutation -------

  AsyncResult<TaskEntity> createTask(TaskCreateParam param);
}
