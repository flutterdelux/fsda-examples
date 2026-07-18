import 'package:app_core/app_core.dart';

import '../../../../shared/data/errors/task_exception.dart';
import '../dtos/task_dto.dart';
import '../requests/task_create_request.dart';
import '../responses/task_create_response.dart';
import 'task_remote_data_source.dart';

class TaskRemoteDataSourceImpl implements TaskRemoteDataSource {
  final ApiClient _apiClient;

  const TaskRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  // ------- Mutation -------

  @override
  Future<TaskDto> createTask(TaskCreateRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/tasks',
      body: request.toJson(),
    );
    if (response.statusCode == 200) {
      final taskCreateResponse = TaskCreateResponse.fromJson(response.body);
      if (taskCreateResponse.data != null) {
        return taskCreateResponse.data!;
      }
  
      throw const CoreException.serverError();
    }
  
    throw TaskException.fromApiResponse(response, st: StackTrace.current);
  }
}
