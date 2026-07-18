import 'package:app_core/app_core.dart';

import '../../../../shared/data/errors/location_exception.dart';
import '../dtos/city_dto.dart';
import '../requests/city_list_request.dart';
import '../responses/city_list_response.dart';
import 'city_remote_data_source.dart';

class CityRemoteDataSourceImpl implements CityRemoteDataSource {
  final ApiClient _apiClient;

  const CityRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  @override
  Future<List<CityDto>> getCityList(CityListRequest request) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/cities',
      queryParameters: request.toJson(),
    );

    if (response.statusCode == 200) {
      final cityListResponse = CityListResponse.fromJson(response.body);
      if (cityListResponse.data != null) {
        return cityListResponse.data!;
      }

      throw const CoreException.serverError();
    }

    throw LocationException.fromApiResponse(response);
  }

  // ------- Mutation -------
}
