import '../requests/wallet_delete_request.dart';

abstract interface class WalletRemoteDataSource {
  // ------- Retrieval -------

  // ------- Mutation -------

  Future<void> deleteWallet(WalletDeleteRequest request);
}
