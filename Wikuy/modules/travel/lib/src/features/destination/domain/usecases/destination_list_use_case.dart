import 'package:app_core/app_core.dart';

import '../entities/destination_entity.dart';
import '../repositories/destination_repository.dart';

class DestinationListUseCase extends NoParamUseCase<List<DestinationEntity>> {
  final DestinationRepository _repository;

  const DestinationListUseCase({
    required DestinationRepository destinationRepository,
  }) : _repository = destinationRepository;

  @override
  AsyncResult<List<DestinationEntity>> call() =>
      _repository.getDestinationList();
}
