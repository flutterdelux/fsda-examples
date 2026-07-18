import 'package:app_core/app_core.dart';

import '../../../../shared/data/errors/inbox_exception.dart';
import 'inbox_remote_data_source.dart';

class InboxRemoteDataSourceImpl implements InboxRemoteDataSource {
  final ApiClient _apiClient;

  const InboxRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  // ------- Mutation -------

  @override
  Future<void> markAllInboxRead() async {
    final response = await _apiClient.patch<Map>('/inboxes/mark-all-read');
    if (response.statusCode == 200) return;
    throw InboxException.fromApiResponse(response);
  }
}
