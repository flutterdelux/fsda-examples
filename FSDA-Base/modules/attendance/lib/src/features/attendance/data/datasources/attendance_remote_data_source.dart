import '../dtos/attendance_dto.dart';

abstract interface class AttendanceRemoteDataSource {
  // ------- Retrieval -------

  Stream<List<AttendanceDto>> watchAttendanceList();

  // ------- Mutation -------
}
