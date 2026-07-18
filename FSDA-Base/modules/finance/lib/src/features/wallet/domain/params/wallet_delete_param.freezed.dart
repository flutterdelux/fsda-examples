// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_delete_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletDeleteParam {

 int get id;
/// Create a copy of WalletDeleteParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletDeleteParamCopyWith<WalletDeleteParam> get copyWith => _$WalletDeleteParamCopyWithImpl<WalletDeleteParam>(this as WalletDeleteParam, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletDeleteParam&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'WalletDeleteParam(id: $id)';
}


}

/// @nodoc
abstract mixin class $WalletDeleteParamCopyWith<$Res>  {
  factory $WalletDeleteParamCopyWith(WalletDeleteParam value, $Res Function(WalletDeleteParam) _then) = _$WalletDeleteParamCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$WalletDeleteParamCopyWithImpl<$Res>
    implements $WalletDeleteParamCopyWith<$Res> {
  _$WalletDeleteParamCopyWithImpl(this._self, this._then);

  final WalletDeleteParam _self;
  final $Res Function(WalletDeleteParam) _then;

/// Create a copy of WalletDeleteParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletDeleteParam].
extension WalletDeleteParamPatterns on WalletDeleteParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletDeleteParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletDeleteParam() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletDeleteParam value)  $default,){
final _that = this;
switch (_that) {
case _WalletDeleteParam():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletDeleteParam value)?  $default,){
final _that = this;
switch (_that) {
case _WalletDeleteParam() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletDeleteParam() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id)  $default,) {final _that = this;
switch (_that) {
case _WalletDeleteParam():
return $default(_that.id);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id)?  $default,) {final _that = this;
switch (_that) {
case _WalletDeleteParam() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _WalletDeleteParam implements WalletDeleteParam {
  const _WalletDeleteParam({required this.id});
  

@override final  int id;

/// Create a copy of WalletDeleteParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletDeleteParamCopyWith<_WalletDeleteParam> get copyWith => __$WalletDeleteParamCopyWithImpl<_WalletDeleteParam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletDeleteParam&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'WalletDeleteParam(id: $id)';
}


}

/// @nodoc
abstract mixin class _$WalletDeleteParamCopyWith<$Res> implements $WalletDeleteParamCopyWith<$Res> {
  factory _$WalletDeleteParamCopyWith(_WalletDeleteParam value, $Res Function(_WalletDeleteParam) _then) = __$WalletDeleteParamCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$WalletDeleteParamCopyWithImpl<$Res>
    implements _$WalletDeleteParamCopyWith<$Res> {
  __$WalletDeleteParamCopyWithImpl(this._self, this._then);

  final _WalletDeleteParam _self;
  final $Res Function(_WalletDeleteParam) _then;

/// Create a copy of WalletDeleteParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_WalletDeleteParam(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
