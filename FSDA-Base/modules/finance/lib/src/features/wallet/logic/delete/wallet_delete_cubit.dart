import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/params/wallet_delete_param.dart';
import '../../domain/usecases/wallet_delete_use_case.dart';
import 'wallet_delete_state.dart';

class WalletDeleteCubit extends Cubit<WalletDeleteState> {
  final WalletDeleteUseCase _useCase;

  WalletDeleteCubit({required WalletDeleteUseCase walletDeleteUseCase})
    : _useCase = walletDeleteUseCase,
      super(const WalletDeleteState.initial());

  Future<void> deleteWallet(WalletDeleteParam param) async {
    emit(const WalletDeleteState.loading());

    final result = await _useCase(param);

    emit(
      result.when(
        success: (_) => const WalletDeleteState.success(),
        failure: (failure) => WalletDeleteState.failure(failure: failure),
      ),
    );
  }
}
