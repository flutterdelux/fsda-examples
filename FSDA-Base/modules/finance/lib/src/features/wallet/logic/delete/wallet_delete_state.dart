import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_delete_state.freezed.dart';

@freezed
sealed class WalletDeleteState with _$WalletDeleteState {
  const factory WalletDeleteState.initial() = _Initial;
  const factory WalletDeleteState.loading() = _Loading;
  const factory WalletDeleteState.success() = _Success;
  const factory WalletDeleteState.failure({required Failure failure}) =
      _Failure;
}
