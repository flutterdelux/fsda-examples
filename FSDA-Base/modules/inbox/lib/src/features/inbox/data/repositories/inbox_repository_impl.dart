import 'package:app_core/app_core.dart';

import '../../domain/repositories/inbox_repository.dart';
import '../datasources/inbox_remote_data_source.dart';

class InboxRepositoryImpl
    with RepositoryExceptionHandler
    implements InboxRepository {
  final AppLogger _log;
  final InboxRemoteDataSource _remoteDataSource;

  const InboxRepositoryImpl({
    required AppLogger appLogger,
    required InboxRemoteDataSource inboxRemoteDataSource,
  }) : _log = appLogger,
       _remoteDataSource = inboxRemoteDataSource;

  @override
  AppLogger get log => _log;

  // ------- Retrieval -------

  // ------- Mutation -------

  @override
  AsyncResult<void> markAllInboxRead() async {
    try {
      await _remoteDataSource.markAllInboxRead();
      return const Result.success(null);
    } catch (e, st) {
      return handleException('markAllInboxRead', e, st);
    }
  }
}
