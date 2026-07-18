import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/errors/finance_failure.dart';

part 'finance_exception.freezed.dart';

@freezed
sealed class FinanceException with _$FinanceException implements AppException {
  const FinanceException._();

  const factory FinanceException.financeNotFound({
    String? msg,
    StackTrace? st,
  }) = _FinanceNotFound;
  const factory FinanceException.walletNotFound({String? msg, StackTrace? st}) =
      _WalletNotFound;

  @override
  String get message => when(
    financeNotFound: (msg, _) => msg ?? 'Finance not found',
    walletNotFound: (msg, _) => msg ?? 'Wallet not found',
  );

  @override
  StackTrace? get stackTrace => st;

  @override
  Failure toFailure() => when(
    financeNotFound: (_, _) => FinanceFailure.financeNotFound,
    walletNotFound: (_, _) => FinanceFailure.walletNotFound,
  );

  static AppException fromApiResponse(ApiResponse response, {StackTrace? st}) {
    return CoreException.fromException(response.body.toString(), st: st);
  }

  static AppException fromException(
    Object e, {
    StackTrace? st,
    bool isLocal = false,
  }) {
    if (e is AppException) {
      return e;
    }

    return CoreException.fromException(e, st: st, isLocal: isLocal);
  }
}
