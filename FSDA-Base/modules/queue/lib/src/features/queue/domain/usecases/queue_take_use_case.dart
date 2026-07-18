import 'package:app_core/app_core.dart';

import '../entities/queue_entity.dart';
import '../repositories/queue_repository.dart';

class QueueTakeUseCase extends NoParamUseCase<QueueEntity> {
  final QueueRepository _repository;

  const QueueTakeUseCase({required QueueRepository queueRepository})
    : _repository = queueRepository;

  @override
  AsyncResult<QueueEntity> call() => _repository.takeQueue();
}
