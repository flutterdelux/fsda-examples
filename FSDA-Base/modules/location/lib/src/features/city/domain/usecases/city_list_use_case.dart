import 'package:app_core/app_core.dart';

import '../entities/city_entity.dart';
import '../params/city_list_param.dart';
import '../repositories/city_repository.dart';

class CityListUseCase extends UseCase<List<CityEntity>, CityListParam> {
  final CityRepository _repository;

  const CityListUseCase({required CityRepository cityRepository})
    : _repository = cityRepository;

  @override
  AsyncResult<List<CityEntity>> call(CityListParam param) {
    return _repository.getCityList(param);
  }
}
