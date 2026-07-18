import 'package:app_core/app_core.dart';

import '../../domain/entities/attendance_entity.dart';
import '../../domain/repositories/attendance_repository.dart';
import '../datasources/attendance_remote_data_source.dart';

class AttendanceRepositoryImpl
    with RepositoryExceptionHandler
    implements AttendanceRepository {
  final AppLogger _log;
  final AttendanceRemoteDataSource _remoteDataSource;

  const AttendanceRepositoryImpl({
    required AppLogger appLogger,
    required AttendanceRemoteDataSource attendanceRemoteDataSource,
  }) : _log = appLogger,
       _remoteDataSource = attendanceRemoteDataSource;

  @override
  AppLogger get log => _log;

  // ------- Retrieval -------

  @override
  StreamResult<List<AttendanceEntity>> watchAttendanceList() async* {
    try {
      final stream = _remoteDataSource.watchAttendanceList();

      await for (final dtos in stream) {
        final entities = dtos.map((dto) => dto.toEntity()).toList();
        yield Result.success(entities);
      }
    } catch (e, st) {
      yield handleException('watchAttendanceList', e, st);
    }
  }

  // ------- Mutation -------
}
