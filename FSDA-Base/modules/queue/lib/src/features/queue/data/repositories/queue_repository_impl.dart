import 'package:app_core/app_core.dart';

import '../../domain/entities/queue_entity.dart';
import '../../domain/repositories/queue_repository.dart';
import '../datasources/queue_remote_data_source.dart';

class QueueRepositoryImpl
    with RepositoryExceptionHandler
    implements QueueRepository {
  final AppLogger _log;
  final QueueRemoteDataSource _remoteDataSource;

  const QueueRepositoryImpl({
    required AppLogger appLogger,
    required QueueRemoteDataSource queueRemoteDataSource,
  }) : _log = appLogger,
       _remoteDataSource = queueRemoteDataSource;

  @override
  AppLogger get log => _log;

  // ------- Retrieval -------

  // ------- Mutation -------

  @override
  AsyncResult<QueueEntity> takeQueue() async {
    try {
      final dto = await _remoteDataSource.takeQueue();
      final entity = dto.toEntity();
      return Result.success(entity);
    } catch (e, st) {
      return handleException('takeQueue', e, st);
    }
  }
}
