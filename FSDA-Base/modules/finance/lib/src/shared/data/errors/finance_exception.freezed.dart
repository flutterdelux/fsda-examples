// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FinanceException {

 String? get msg; StackTrace? get st;
/// Create a copy of FinanceException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceExceptionCopyWith<FinanceException> get copyWith => _$FinanceExceptionCopyWithImpl<FinanceException>(this as FinanceException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceException&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'FinanceException(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class $FinanceExceptionCopyWith<$Res>  {
  factory $FinanceExceptionCopyWith(FinanceException value, $Res Function(FinanceException) _then) = _$FinanceExceptionCopyWithImpl;
@useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class _$FinanceExceptionCopyWithImpl<$Res>
    implements $FinanceExceptionCopyWith<$Res> {
  _$FinanceExceptionCopyWithImpl(this._self, this._then);

  final FinanceException _self;
  final $Res Function(FinanceException) _then;

/// Create a copy of FinanceException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_self.copyWith(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}


/// Adds pattern-matching-related methods to [FinanceException].
extension FinanceExceptionPatterns on FinanceException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FinanceNotFound value)?  financeNotFound,TResult Function( _WalletNotFound value)?  walletNotFound,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceNotFound() when financeNotFound != null:
return financeNotFound(_that);case _WalletNotFound() when walletNotFound != null:
return walletNotFound(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FinanceNotFound value)  financeNotFound,required TResult Function( _WalletNotFound value)  walletNotFound,}){
final _that = this;
switch (_that) {
case _FinanceNotFound():
return financeNotFound(_that);case _WalletNotFound():
return walletNotFound(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FinanceNotFound value)?  financeNotFound,TResult? Function( _WalletNotFound value)?  walletNotFound,}){
final _that = this;
switch (_that) {
case _FinanceNotFound() when financeNotFound != null:
return financeNotFound(_that);case _WalletNotFound() when walletNotFound != null:
return walletNotFound(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? msg,  StackTrace? st)?  financeNotFound,TResult Function( String? msg,  StackTrace? st)?  walletNotFound,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceNotFound() when financeNotFound != null:
return financeNotFound(_that.msg,_that.st);case _WalletNotFound() when walletNotFound != null:
return walletNotFound(_that.msg,_that.st);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? msg,  StackTrace? st)  financeNotFound,required TResult Function( String? msg,  StackTrace? st)  walletNotFound,}) {final _that = this;
switch (_that) {
case _FinanceNotFound():
return financeNotFound(_that.msg,_that.st);case _WalletNotFound():
return walletNotFound(_that.msg,_that.st);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? msg,  StackTrace? st)?  financeNotFound,TResult? Function( String? msg,  StackTrace? st)?  walletNotFound,}) {final _that = this;
switch (_that) {
case _FinanceNotFound() when financeNotFound != null:
return financeNotFound(_that.msg,_that.st);case _WalletNotFound() when walletNotFound != null:
return walletNotFound(_that.msg,_that.st);case _:
  return null;

}
}

}

/// @nodoc


class _FinanceNotFound extends FinanceException {
  const _FinanceNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of FinanceException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceNotFoundCopyWith<_FinanceNotFound> get copyWith => __$FinanceNotFoundCopyWithImpl<_FinanceNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'FinanceException.financeNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$FinanceNotFoundCopyWith<$Res> implements $FinanceExceptionCopyWith<$Res> {
  factory _$FinanceNotFoundCopyWith(_FinanceNotFound value, $Res Function(_FinanceNotFound) _then) = __$FinanceNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$FinanceNotFoundCopyWithImpl<$Res>
    implements _$FinanceNotFoundCopyWith<$Res> {
  __$FinanceNotFoundCopyWithImpl(this._self, this._then);

  final _FinanceNotFound _self;
  final $Res Function(_FinanceNotFound) _then;

/// Create a copy of FinanceException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_FinanceNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _WalletNotFound extends FinanceException {
  const _WalletNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of FinanceException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletNotFoundCopyWith<_WalletNotFound> get copyWith => __$WalletNotFoundCopyWithImpl<_WalletNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'FinanceException.walletNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$WalletNotFoundCopyWith<$Res> implements $FinanceExceptionCopyWith<$Res> {
  factory _$WalletNotFoundCopyWith(_WalletNotFound value, $Res Function(_WalletNotFound) _then) = __$WalletNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$WalletNotFoundCopyWithImpl<$Res>
    implements _$WalletNotFoundCopyWith<$Res> {
  __$WalletNotFoundCopyWithImpl(this._self, this._then);

  final _WalletNotFound _self;
  final $Res Function(_WalletNotFound) _then;

/// Create a copy of FinanceException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_WalletNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
