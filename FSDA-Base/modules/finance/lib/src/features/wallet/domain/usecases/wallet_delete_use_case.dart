import 'package:app_core/app_core.dart';

import '../params/wallet_delete_param.dart';
import '../repositories/wallet_repository.dart';

class WalletDeleteUseCase extends UseCase<void, WalletDeleteParam> {
  final WalletRepository _repository;

  const WalletDeleteUseCase({required WalletRepository walletRepository})
    : _repository = walletRepository;

  @override
  AsyncResult<void> call(WalletDeleteParam param) {
    return _repository.deleteWallet(param);
  }
}
