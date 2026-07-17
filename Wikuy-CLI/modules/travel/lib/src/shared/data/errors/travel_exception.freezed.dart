// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TravelException {

 String? get msg; StackTrace? get st;
/// Create a copy of TravelException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelExceptionCopyWith<TravelException> get copyWith => _$TravelExceptionCopyWithImpl<TravelException>(this as TravelException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelException&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'TravelException(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class $TravelExceptionCopyWith<$Res>  {
  factory $TravelExceptionCopyWith(TravelException value, $Res Function(TravelException) _then) = _$TravelExceptionCopyWithImpl;
@useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class _$TravelExceptionCopyWithImpl<$Res>
    implements $TravelExceptionCopyWith<$Res> {
  _$TravelExceptionCopyWithImpl(this._self, this._then);

  final TravelException _self;
  final $Res Function(TravelException) _then;

/// Create a copy of TravelException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_self.copyWith(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelException].
extension TravelExceptionPatterns on TravelException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TravelNotFound value)?  travelNotFound,TResult Function( _DestinationNotFound value)?  destinationNotFound,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelNotFound() when travelNotFound != null:
return travelNotFound(_that);case _DestinationNotFound() when destinationNotFound != null:
return destinationNotFound(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TravelNotFound value)  travelNotFound,required TResult Function( _DestinationNotFound value)  destinationNotFound,}){
final _that = this;
switch (_that) {
case _TravelNotFound():
return travelNotFound(_that);case _DestinationNotFound():
return destinationNotFound(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TravelNotFound value)?  travelNotFound,TResult? Function( _DestinationNotFound value)?  destinationNotFound,}){
final _that = this;
switch (_that) {
case _TravelNotFound() when travelNotFound != null:
return travelNotFound(_that);case _DestinationNotFound() when destinationNotFound != null:
return destinationNotFound(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? msg,  StackTrace? st)?  travelNotFound,TResult Function( String? msg,  StackTrace? st)?  destinationNotFound,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelNotFound() when travelNotFound != null:
return travelNotFound(_that.msg,_that.st);case _DestinationNotFound() when destinationNotFound != null:
return destinationNotFound(_that.msg,_that.st);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? msg,  StackTrace? st)  travelNotFound,required TResult Function( String? msg,  StackTrace? st)  destinationNotFound,}) {final _that = this;
switch (_that) {
case _TravelNotFound():
return travelNotFound(_that.msg,_that.st);case _DestinationNotFound():
return destinationNotFound(_that.msg,_that.st);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? msg,  StackTrace? st)?  travelNotFound,TResult? Function( String? msg,  StackTrace? st)?  destinationNotFound,}) {final _that = this;
switch (_that) {
case _TravelNotFound() when travelNotFound != null:
return travelNotFound(_that.msg,_that.st);case _DestinationNotFound() when destinationNotFound != null:
return destinationNotFound(_that.msg,_that.st);case _:
  return null;

}
}

}

/// @nodoc


class _TravelNotFound extends TravelException {
  const _TravelNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of TravelException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelNotFoundCopyWith<_TravelNotFound> get copyWith => __$TravelNotFoundCopyWithImpl<_TravelNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'TravelException.travelNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$TravelNotFoundCopyWith<$Res> implements $TravelExceptionCopyWith<$Res> {
  factory _$TravelNotFoundCopyWith(_TravelNotFound value, $Res Function(_TravelNotFound) _then) = __$TravelNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$TravelNotFoundCopyWithImpl<$Res>
    implements _$TravelNotFoundCopyWith<$Res> {
  __$TravelNotFoundCopyWithImpl(this._self, this._then);

  final _TravelNotFound _self;
  final $Res Function(_TravelNotFound) _then;

/// Create a copy of TravelException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_TravelNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _DestinationNotFound extends TravelException {
  const _DestinationNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of TravelException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DestinationNotFoundCopyWith<_DestinationNotFound> get copyWith => __$DestinationNotFoundCopyWithImpl<_DestinationNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DestinationNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'TravelException.destinationNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$DestinationNotFoundCopyWith<$Res> implements $TravelExceptionCopyWith<$Res> {
  factory _$DestinationNotFoundCopyWith(_DestinationNotFound value, $Res Function(_DestinationNotFound) _then) = __$DestinationNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$DestinationNotFoundCopyWithImpl<$Res>
    implements _$DestinationNotFoundCopyWith<$Res> {
  __$DestinationNotFoundCopyWithImpl(this._self, this._then);

  final _DestinationNotFound _self;
  final $Res Function(_DestinationNotFound) _then;

/// Create a copy of TravelException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_DestinationNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
