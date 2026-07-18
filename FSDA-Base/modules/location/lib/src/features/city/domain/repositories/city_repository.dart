import 'package:app_core/app_core.dart';
import '../entities/city_entity.dart';
import '../params/city_list_param.dart';

abstract interface class CityRepository {
  // ------- Retrieval -------

  AsyncResult<List<CityEntity>> getCityList(CityListParam param);

  // ------- Mutation -------
}
