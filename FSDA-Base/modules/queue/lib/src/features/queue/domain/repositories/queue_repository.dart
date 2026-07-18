import 'package:app_core/app_core.dart';
import '../entities/queue_entity.dart';

abstract interface class QueueRepository {
  // ------- Retrieval -------

  // ------- Mutation -------

  AsyncResult<QueueEntity> takeQueue();
}
