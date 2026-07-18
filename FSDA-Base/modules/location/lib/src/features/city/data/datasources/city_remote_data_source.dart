import '../dtos/city_dto.dart';
import '../requests/city_list_request.dart';

abstract interface class CityRemoteDataSource {
  // ------- Retrieval -------

  Future<List<CityDto>> getCityList(CityListRequest request);

  // ------- Mutation -------
}
