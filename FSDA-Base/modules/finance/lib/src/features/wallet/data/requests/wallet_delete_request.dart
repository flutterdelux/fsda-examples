import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/params/wallet_delete_param.dart';

part 'wallet_delete_request.freezed.dart';

@freezed
abstract class WalletDeleteRequest with _$WalletDeleteRequest {
  const WalletDeleteRequest._();

  const factory WalletDeleteRequest({required int id}) = _WalletDeleteRequest;

  factory WalletDeleteRequest.fromParam(WalletDeleteParam param) {
    return WalletDeleteRequest(id: param.id);
  }
}
