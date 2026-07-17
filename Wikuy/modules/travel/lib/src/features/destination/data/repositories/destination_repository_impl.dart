import 'package:app_core/app_core.dart';

import '../../domain/entities/destination_entity.dart';
import '../../domain/repositories/destination_repository.dart';
import '../datasources/destination_remote_data_source.dart';

class DestinationRepositoryImpl
    with RepositoryExceptionHandler
    implements DestinationRepository {
  final AppLogger _log;
  final DestinationRemoteDataSource _remoteDataSource;

  const DestinationRepositoryImpl({
    required AppLogger appLogger,
    required DestinationRemoteDataSource destinationRemoteDataSource,
  }) : _log = appLogger,
       _remoteDataSource = destinationRemoteDataSource;

  @override
  AppLogger get log => _log;

  // ------- Retrieval -------

  @override
  AsyncResult<List<DestinationEntity>> getDestinationList() async {
    try {
      final dtos = await _remoteDataSource.getDestinationList();
      return Result.success(dtos.map((e) => e.toEntity()).toList());
    } catch (e, st) {
      return handleException('getDestinationList', e, st);
    }
  }

  // ------- Mutation -------
}
