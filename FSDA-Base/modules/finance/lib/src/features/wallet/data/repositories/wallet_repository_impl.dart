import 'package:app_core/app_core.dart';

import '../../domain/params/wallet_delete_param.dart';
import '../../domain/repositories/wallet_repository.dart';
import '../datasources/wallet_remote_data_source.dart';
import '../requests/wallet_delete_request.dart';

class WalletRepositoryImpl
    with RepositoryExceptionHandler
    implements WalletRepository {
  final AppLogger _log;
  final WalletRemoteDataSource _remoteDataSource;

  const WalletRepositoryImpl({
    required AppLogger appLogger,
    required WalletRemoteDataSource walletRemoteDataSource,
  }) : _log = appLogger,
       _remoteDataSource = walletRemoteDataSource;

  @override
  AppLogger get log => _log;

  // ------- Retrieval -------

  // ------- Mutation -------

  @override
  AsyncResult<void> deleteWallet(WalletDeleteParam param) async {
    final request = WalletDeleteRequest.fromParam(param);

    try {
      await _remoteDataSource.deleteWallet(request);
      return const Result.success(null);
    } catch (e, st) {
      return handleException('deleteWallet', e, st);
    }
  }
}
