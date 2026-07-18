import 'package:app_core/app_core.dart';

import '../../../../shared/data/errors/queue_exception.dart';
import '../dtos/queue_dto.dart';
import '../responses/queue_take_response.dart';
import 'queue_remote_data_source.dart';

class QueueRemoteDataSourceImpl implements QueueRemoteDataSource {
  final ApiClient _apiClient;

  const QueueRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  // ------- Mutation -------

  @override
  Future<QueueDto> takeQueue() async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/queues/take',
    );

    if (response.statusCode == 200) {
      final queueTakeResponse = QueueTakeResponse.fromJson(response.body);
      if (queueTakeResponse.data != null) {
        return queueTakeResponse.data!;
      }
      throw const CoreException.serverError();
    }

    throw QueueException.fromApiResponse(response);
  }
}
