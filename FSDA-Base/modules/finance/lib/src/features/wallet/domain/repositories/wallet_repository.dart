import 'package:app_core/app_core.dart';
import '../params/wallet_delete_param.dart';

abstract interface class WalletRepository {
  // ------- Retrieval -------

  // ------- Mutation -------

  AsyncResult<void> deleteWallet(WalletDeleteParam param);
}
