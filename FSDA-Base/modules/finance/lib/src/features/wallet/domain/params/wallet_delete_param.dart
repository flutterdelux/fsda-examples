import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_delete_param.freezed.dart';

@freezed
abstract class WalletDeleteParam with _$WalletDeleteParam {
  const factory WalletDeleteParam({required int id}) = _WalletDeleteParam;
}
