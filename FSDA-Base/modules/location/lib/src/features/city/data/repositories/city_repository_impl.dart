import 'package:app_core/app_core.dart';

import '../../domain/entities/city_entity.dart';
import '../../domain/params/city_list_param.dart';
import '../../domain/repositories/city_repository.dart';
import '../datasources/city_remote_data_source.dart';
import '../requests/city_list_request.dart';

class CityRepositoryImpl
    with RepositoryExceptionHandler
    implements CityRepository {
  final AppLogger _log;
  final CityRemoteDataSource _remoteDataSource;

  const CityRepositoryImpl({
    required AppLogger appLogger,
    required CityRemoteDataSource cityRemoteDataSource,
  }) : _log = appLogger,
       _remoteDataSource = cityRemoteDataSource;

  @override
  AppLogger get log => _log;

  // ------- Retrieval -------

  @override
  AsyncResult<List<CityEntity>> getCityList(CityListParam param) async {
    try {
      final request = CityListRequest.fromParam(param);
      final dtos = await _remoteDataSource.getCityList(request);
      final entities = dtos.map((dto) => dto.toEntity()).toList();
      return Result.success(entities);
    } catch (e, st) {
      return handleException('cityList', e, st);
    }
  }

  // ------- Mutation -------
}
