import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/errors/subscription_failure.dart';

part 'subscription_exception.freezed.dart';

@freezed
sealed class SubscriptionException with _$SubscriptionException implements AppException {
  const SubscriptionException._();

  const factory SubscriptionException.subscriptionNotFound({String? msg, StackTrace? st}) =
      _SubscriptionNotFound;
  const factory SubscriptionException.paymentNotFound({String? msg, StackTrace? st}) =
      _PaymentNotFound;


  @override
  String get message => when(subscriptionNotFound: (msg, _) => msg ?? 'Subscription not found', paymentNotFound: (msg, _) => msg ?? 'Payment not found');

  @override
  StackTrace? get stackTrace => st;

  @override
  Failure toFailure() => when(subscriptionNotFound: (_, _) => SubscriptionFailure.subscriptionNotFound, paymentNotFound: (_, _) => SubscriptionFailure.paymentNotFound);

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
