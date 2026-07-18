import 'package:app_core/app_core.dart';

abstract interface class InboxRepository {
  // ------- Retrieval -------

  // ------- Mutation -------

  AsyncResult<void> markAllInboxRead();
}