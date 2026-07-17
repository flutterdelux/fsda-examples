import '../dtos/destination_dto.dart';

abstract interface class DestinationRemoteDataSource {
  // ------- Retrieval -------

  Future<List<DestinationDto>> getDestinationList();

  // ------- Mutation -------
}
