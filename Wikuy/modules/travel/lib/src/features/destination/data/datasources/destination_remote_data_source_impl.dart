import 'package:app_core/app_core.dart';

import '../../../../shared/data/errors/travel_exception.dart';
import '../dtos/destination_dto.dart';
import '../responses/destination_list_response.dart';
import 'destination_remote_data_source.dart';

class DestinationRemoteDataSourceImpl implements DestinationRemoteDataSource {
  final ApiClient _apiClient;

  const DestinationRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  @override
  Future<List<DestinationDto>> getDestinationList() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/destinations',
    );
    if (response.statusCode == 200) {
      final destinationListResponse = DestinationListResponse.fromJson(
        response.body,
      );
      if (destinationListResponse.data != null) {
        return destinationListResponse.data!;
      }

      throw const CoreException.serverError();
    }

    throw TravelException.fromApiResponse(response, st: StackTrace.current);
  }

  // ------- Mutation -------
}
