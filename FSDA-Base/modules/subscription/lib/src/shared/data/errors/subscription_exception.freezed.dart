// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubscriptionException {

 String? get msg; StackTrace? get st;
/// Create a copy of SubscriptionException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionExceptionCopyWith<SubscriptionException> get copyWith => _$SubscriptionExceptionCopyWithImpl<SubscriptionException>(this as SubscriptionException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionException&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'SubscriptionException(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class $SubscriptionExceptionCopyWith<$Res>  {
  factory $SubscriptionExceptionCopyWith(SubscriptionException value, $Res Function(SubscriptionException) _then) = _$SubscriptionExceptionCopyWithImpl;
@useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class _$SubscriptionExceptionCopyWithImpl<$Res>
    implements $SubscriptionExceptionCopyWith<$Res> {
  _$SubscriptionExceptionCopyWithImpl(this._self, this._then);

  final SubscriptionException _self;
  final $Res Function(SubscriptionException) _then;

/// Create a copy of SubscriptionException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_self.copyWith(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionException].
extension SubscriptionExceptionPatterns on SubscriptionException {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SubscriptionNotFound value)?  subscriptionNotFound,TResult Function( _PaymentNotFound value)?  paymentNotFound,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionNotFound() when subscriptionNotFound != null:
return subscriptionNotFound(_that);case _PaymentNotFound() when paymentNotFound != null:
return paymentNotFound(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SubscriptionNotFound value)  subscriptionNotFound,required TResult Function( _PaymentNotFound value)  paymentNotFound,}){
final _that = this;
switch (_that) {
case _SubscriptionNotFound():
return subscriptionNotFound(_that);case _PaymentNotFound():
return paymentNotFound(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SubscriptionNotFound value)?  subscriptionNotFound,TResult? Function( _PaymentNotFound value)?  paymentNotFound,}){
final _that = this;
switch (_that) {
case _SubscriptionNotFound() when subscriptionNotFound != null:
return subscriptionNotFound(_that);case _PaymentNotFound() when paymentNotFound != null:
return paymentNotFound(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? msg,  StackTrace? st)?  subscriptionNotFound,TResult Function( String? msg,  StackTrace? st)?  paymentNotFound,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionNotFound() when subscriptionNotFound != null:
return subscriptionNotFound(_that.msg,_that.st);case _PaymentNotFound() when paymentNotFound != null:
return paymentNotFound(_that.msg,_that.st);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? msg,  StackTrace? st)  subscriptionNotFound,required TResult Function( String? msg,  StackTrace? st)  paymentNotFound,}) {final _that = this;
switch (_that) {
case _SubscriptionNotFound():
return subscriptionNotFound(_that.msg,_that.st);case _PaymentNotFound():
return paymentNotFound(_that.msg,_that.st);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? msg,  StackTrace? st)?  subscriptionNotFound,TResult? Function( String? msg,  StackTrace? st)?  paymentNotFound,}) {final _that = this;
switch (_that) {
case _SubscriptionNotFound() when subscriptionNotFound != null:
return subscriptionNotFound(_that.msg,_that.st);case _PaymentNotFound() when paymentNotFound != null:
return paymentNotFound(_that.msg,_that.st);case _:
  return null;

}
}

}

/// @nodoc


class _SubscriptionNotFound extends SubscriptionException {
  const _SubscriptionNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of SubscriptionException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionNotFoundCopyWith<_SubscriptionNotFound> get copyWith => __$SubscriptionNotFoundCopyWithImpl<_SubscriptionNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'SubscriptionException.subscriptionNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionNotFoundCopyWith<$Res> implements $SubscriptionExceptionCopyWith<$Res> {
  factory _$SubscriptionNotFoundCopyWith(_SubscriptionNotFound value, $Res Function(_SubscriptionNotFound) _then) = __$SubscriptionNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$SubscriptionNotFoundCopyWithImpl<$Res>
    implements _$SubscriptionNotFoundCopyWith<$Res> {
  __$SubscriptionNotFoundCopyWithImpl(this._self, this._then);

  final _SubscriptionNotFound _self;
  final $Res Function(_SubscriptionNotFound) _then;

/// Create a copy of SubscriptionException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_SubscriptionNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _PaymentNotFound extends SubscriptionException {
  const _PaymentNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of SubscriptionException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentNotFoundCopyWith<_PaymentNotFound> get copyWith => __$PaymentNotFoundCopyWithImpl<_PaymentNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'SubscriptionException.paymentNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$PaymentNotFoundCopyWith<$Res> implements $SubscriptionExceptionCopyWith<$Res> {
  factory _$PaymentNotFoundCopyWith(_PaymentNotFound value, $Res Function(_PaymentNotFound) _then) = __$PaymentNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$PaymentNotFoundCopyWithImpl<$Res>
    implements _$PaymentNotFoundCopyWith<$Res> {
  __$PaymentNotFoundCopyWithImpl(this._self, this._then);

  final _PaymentNotFound _self;
  final $Res Function(_PaymentNotFound) _then;

/// Create a copy of SubscriptionException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_PaymentNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
