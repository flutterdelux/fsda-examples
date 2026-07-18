import 'package:app_core/app_core.dart';

import '../dtos/attendance_dto.dart';
import 'attendance_remote_data_source.dart';

class AttendanceRemoteDataSourceImpl implements AttendanceRemoteDataSource {
  final ApiClient _apiClient;

  const AttendanceRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  @override
  Stream<List<AttendanceDto>> attendanceList() {
    return _apiClient.stream<List>('/attendances/stream').map((data) {
      return data
          .map((e) => AttendanceDto.fromJson(e as Map<String, dynamic>))
          .toList();
    });
  }

  // ------- Mutation -------
}
