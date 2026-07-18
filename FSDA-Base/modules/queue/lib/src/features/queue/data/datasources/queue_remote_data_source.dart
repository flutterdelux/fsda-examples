import '../dtos/queue_dto.dart';

abstract interface class QueueRemoteDataSource {
  // ------- Retrieval -------

  // ------- Mutation -------

  Future<QueueDto> takeQueue();
}
