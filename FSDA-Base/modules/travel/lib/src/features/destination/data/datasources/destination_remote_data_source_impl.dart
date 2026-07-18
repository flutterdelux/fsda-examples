import 'package:app_core/app_core.dart';

import '../../../../shared/data/errors/travel_exception.dart';
import '../dtos/destination_dto.dart';
import '../responses/destination_popular_response.dart';
import 'destination_remote_data_source.dart';

class DestinationRemoteDataSourceImpl implements DestinationRemoteDataSource {
  final ApiClient _apiClient;

  const DestinationRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  @override
  Future<List<DestinationDto>> destinationPopular() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/destinations/popular',
    );
    if (response.statusCode == 200) {
      final destinationPopularResponse = DestinationPopularResponse.fromJson(
        response.body,
      );
      if (destinationPopularResponse.data != null) {
        return destinationPopularResponse.data!;
      }
  
      throw const CoreException.serverError();
    }
  
    throw TravelException.fromApiResponse(response, st: StackTrace.current);
  }

  // ------- Mutation -------
}
