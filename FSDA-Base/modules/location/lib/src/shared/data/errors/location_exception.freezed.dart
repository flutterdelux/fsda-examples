// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationException {

 String? get msg; StackTrace? get st;
/// Create a copy of LocationException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationExceptionCopyWith<LocationException> get copyWith => _$LocationExceptionCopyWithImpl<LocationException>(this as LocationException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationException&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'LocationException(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class $LocationExceptionCopyWith<$Res>  {
  factory $LocationExceptionCopyWith(LocationException value, $Res Function(LocationException) _then) = _$LocationExceptionCopyWithImpl;
@useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class _$LocationExceptionCopyWithImpl<$Res>
    implements $LocationExceptionCopyWith<$Res> {
  _$LocationExceptionCopyWithImpl(this._self, this._then);

  final LocationException _self;
  final $Res Function(LocationException) _then;

/// Create a copy of LocationException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_self.copyWith(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationException].
extension LocationExceptionPatterns on LocationException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LocationNotFound value)?  locationNotFound,TResult Function( _CityNotFound value)?  cityNotFound,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationNotFound() when locationNotFound != null:
return locationNotFound(_that);case _CityNotFound() when cityNotFound != null:
return cityNotFound(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LocationNotFound value)  locationNotFound,required TResult Function( _CityNotFound value)  cityNotFound,}){
final _that = this;
switch (_that) {
case _LocationNotFound():
return locationNotFound(_that);case _CityNotFound():
return cityNotFound(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LocationNotFound value)?  locationNotFound,TResult? Function( _CityNotFound value)?  cityNotFound,}){
final _that = this;
switch (_that) {
case _LocationNotFound() when locationNotFound != null:
return locationNotFound(_that);case _CityNotFound() when cityNotFound != null:
return cityNotFound(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? msg,  StackTrace? st)?  locationNotFound,TResult Function( String? msg,  StackTrace? st)?  cityNotFound,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationNotFound() when locationNotFound != null:
return locationNotFound(_that.msg,_that.st);case _CityNotFound() when cityNotFound != null:
return cityNotFound(_that.msg,_that.st);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? msg,  StackTrace? st)  locationNotFound,required TResult Function( String? msg,  StackTrace? st)  cityNotFound,}) {final _that = this;
switch (_that) {
case _LocationNotFound():
return locationNotFound(_that.msg,_that.st);case _CityNotFound():
return cityNotFound(_that.msg,_that.st);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? msg,  StackTrace? st)?  locationNotFound,TResult? Function( String? msg,  StackTrace? st)?  cityNotFound,}) {final _that = this;
switch (_that) {
case _LocationNotFound() when locationNotFound != null:
return locationNotFound(_that.msg,_that.st);case _CityNotFound() when cityNotFound != null:
return cityNotFound(_that.msg,_that.st);case _:
  return null;

}
}

}

/// @nodoc


class _LocationNotFound extends LocationException {
  const _LocationNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of LocationException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationNotFoundCopyWith<_LocationNotFound> get copyWith => __$LocationNotFoundCopyWithImpl<_LocationNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'LocationException.locationNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$LocationNotFoundCopyWith<$Res> implements $LocationExceptionCopyWith<$Res> {
  factory _$LocationNotFoundCopyWith(_LocationNotFound value, $Res Function(_LocationNotFound) _then) = __$LocationNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$LocationNotFoundCopyWithImpl<$Res>
    implements _$LocationNotFoundCopyWith<$Res> {
  __$LocationNotFoundCopyWithImpl(this._self, this._then);

  final _LocationNotFound _self;
  final $Res Function(_LocationNotFound) _then;

/// Create a copy of LocationException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_LocationNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _CityNotFound extends LocationException {
  const _CityNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of LocationException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityNotFoundCopyWith<_CityNotFound> get copyWith => __$CityNotFoundCopyWithImpl<_CityNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'LocationException.cityNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$CityNotFoundCopyWith<$Res> implements $LocationExceptionCopyWith<$Res> {
  factory _$CityNotFoundCopyWith(_CityNotFound value, $Res Function(_CityNotFound) _then) = __$CityNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$CityNotFoundCopyWithImpl<$Res>
    implements _$CityNotFoundCopyWith<$Res> {
  __$CityNotFoundCopyWithImpl(this._self, this._then);

  final _CityNotFound _self;
  final $Res Function(_CityNotFound) _then;

/// Create a copy of LocationException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_CityNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
