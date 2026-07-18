import '../dtos/task_dto.dart';
import '../requests/task_create_request.dart';

abstract interface class TaskRemoteDataSource {
  // ------- Retrieval -------

  // ------- Mutation -------

  Future<TaskDto> createTask(TaskCreateRequest request);
}
