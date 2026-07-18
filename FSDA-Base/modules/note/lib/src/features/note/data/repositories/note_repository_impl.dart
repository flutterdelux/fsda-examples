import 'package:app_core/app_core.dart';

import '../../domain/entities/note_entity.dart';
import '../../domain/repositories/note_repository.dart';
import '../datasources/note_local_data_source.dart';
import '../datasources/note_remote_data_source.dart';

class NoteRepositoryImpl
    with RepositoryExceptionHandler
    implements NoteRepository {
  final AppLogger _log;
  final NetworkInfo _networkInfo;
  final NoteLocalDataSource _localDataSource;
  final NoteRemoteDataSource _remoteDataSource;

  const NoteRepositoryImpl({
    required AppLogger appLogger,
    required NetworkInfo networkInfo,
    required NoteLocalDataSource noteLocalDataSource,
    required NoteRemoteDataSource noteRemoteDataSource,
  }) : _log = appLogger,
       _networkInfo = networkInfo,
       _localDataSource = noteLocalDataSource,
       _remoteDataSource = noteRemoteDataSource;

  @override
  AppLogger get log => _log;

  // ------- Retrieval -------

  @override
  AsyncResult<List<NoteEntity>> getNoteList() async {
    final isOnline = await _networkInfo.hasInternetAccess;
  
    if (isOnline) {
      try {
        final noteDtos = await _remoteDataSource.getNoteList();
        await _localDataSource.cacheNoteList(noteDtos);
      } catch (e, st) {
        log.warning(
          'getNoteList refresh cache failed',
          error: e,
          stackTrace: st,
        );
      }
    }
  
    try {
      final cachedNoteList = await _localDataSource.getNoteList();
  
      return Result.success(cachedNoteList.map((dto) => dto.toEntity()).toList());
    } catch (e, st) {
      return handleException('getNoteList', e, st);
    }
  }

  // ------- Mutation -------
}
