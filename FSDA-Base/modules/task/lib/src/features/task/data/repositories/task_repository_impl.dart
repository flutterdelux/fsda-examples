import 'package:app_core/app_core.dart';

import '../../domain/entities/task_entity.dart';
import '../../domain/params/task_create_param.dart';
import '../../domain/repositories/task_repository.dart';
import '../datasources/task_remote_data_source.dart';
import '../requests/task_create_request.dart';

class TaskRepositoryImpl
    with RepositoryExceptionHandler
    implements TaskRepository {
  final AppLogger _log;
  final TaskRemoteDataSource _remoteDataSource;

  const TaskRepositoryImpl({
    required AppLogger appLogger,
    required TaskRemoteDataSource taskRemoteDataSource,
  }) : _log = appLogger,
       _remoteDataSource = taskRemoteDataSource;

  @override
  AppLogger get log => _log;

  // ------- Retrieval -------

  // ------- Mutation -------

  @override
  AsyncResult<TaskEntity> createTask(TaskCreateParam param) async {
    try {
      final request = TaskCreateRequest.fromParam(param);
      final dto = await _remoteDataSource.createTask(request);
      return Result.success(dto.toEntity());
    } catch (e, st) {
      return handleException('createTask', e, st);
    }
  }
}
