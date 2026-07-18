import 'package:app_core/app_core.dart';
import '../entities/attendance_entity.dart';

abstract interface class AttendanceRepository {
  // ------- Retrieval -------

  StreamResult<List<AttendanceEntity>> attendanceList();

  // ------- Mutation -------
}
