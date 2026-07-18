import 'package:app_core/app_core.dart';
import '../entities/destination_entity.dart';

abstract interface class DestinationRepository {
  // ------- Retrieval -------

  AsyncResult<List<DestinationEntity>> destinationPopular();

  // ------- Mutation -------
}
