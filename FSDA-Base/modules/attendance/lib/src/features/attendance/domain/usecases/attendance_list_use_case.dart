import 'package:app_core/app_core.dart';

import '../entities/attendance_entity.dart';
import '../repositories/attendance_repository.dart';

class AttendanceListUseCase
    extends NoParamStreamUseCase<List<AttendanceEntity>> {
  final AttendanceRepository _repository;

  const AttendanceListUseCase({
    required AttendanceRepository attendanceRepository,
  }) : _repository = attendanceRepository;

  @override
  StreamResult<List<AttendanceEntity>> call() =>
      _repository.attendanceList();
}
