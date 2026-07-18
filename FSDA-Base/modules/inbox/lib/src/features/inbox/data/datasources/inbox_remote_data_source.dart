abstract interface class InboxRemoteDataSource {
  // ------- Retrieval -------

  // ------- Mutation -------

  Future<void> markAllInboxRead();
}