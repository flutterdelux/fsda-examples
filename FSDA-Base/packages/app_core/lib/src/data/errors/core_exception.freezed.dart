// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoreException {

 String? get msg; StackTrace? get st;
/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoreExceptionCopyWith<CoreException> get copyWith => _$CoreExceptionCopyWithImpl<CoreException>(this as CoreException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoreException&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'CoreException(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class $CoreExceptionCopyWith<$Res>  {
  factory $CoreExceptionCopyWith(CoreException value, $Res Function(CoreException) _then) = _$CoreExceptionCopyWithImpl;
@useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class _$CoreExceptionCopyWithImpl<$Res>
    implements $CoreExceptionCopyWith<$Res> {
  _$CoreExceptionCopyWithImpl(this._self, this._then);

  final CoreException _self;
  final $Res Function(CoreException) _then;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_self.copyWith(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}


/// Adds pattern-matching-related methods to [CoreException].
extension CoreExceptionPatterns on CoreException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CacheError value)?  cacheError,TResult Function( _ServerError value)?  serverError,TResult Function( _ServiceUnavailable value)?  serviceUnavailable,TResult Function( _NetworkError value)?  networkError,TResult Function( _TimeoutError value)?  timeoutError,TResult Function( _UnauthenticatedError value)?  unauthenticatedError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CacheError() when cacheError != null:
return cacheError(_that);case _ServerError() when serverError != null:
return serverError(_that);case _ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable(_that);case _NetworkError() when networkError != null:
return networkError(_that);case _TimeoutError() when timeoutError != null:
return timeoutError(_that);case _UnauthenticatedError() when unauthenticatedError != null:
return unauthenticatedError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CacheError value)  cacheError,required TResult Function( _ServerError value)  serverError,required TResult Function( _ServiceUnavailable value)  serviceUnavailable,required TResult Function( _NetworkError value)  networkError,required TResult Function( _TimeoutError value)  timeoutError,required TResult Function( _UnauthenticatedError value)  unauthenticatedError,}){
final _that = this;
switch (_that) {
case _CacheError():
return cacheError(_that);case _ServerError():
return serverError(_that);case _ServiceUnavailable():
return serviceUnavailable(_that);case _NetworkError():
return networkError(_that);case _TimeoutError():
return timeoutError(_that);case _UnauthenticatedError():
return unauthenticatedError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CacheError value)?  cacheError,TResult? Function( _ServerError value)?  serverError,TResult? Function( _ServiceUnavailable value)?  serviceUnavailable,TResult? Function( _NetworkError value)?  networkError,TResult? Function( _TimeoutError value)?  timeoutError,TResult? Function( _UnauthenticatedError value)?  unauthenticatedError,}){
final _that = this;
switch (_that) {
case _CacheError() when cacheError != null:
return cacheError(_that);case _ServerError() when serverError != null:
return serverError(_that);case _ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable(_that);case _NetworkError() when networkError != null:
return networkError(_that);case _TimeoutError() when timeoutError != null:
return timeoutError(_that);case _UnauthenticatedError() when unauthenticatedError != null:
return unauthenticatedError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? msg,  StackTrace? st)?  cacheError,TResult Function( String? msg,  StackTrace? st)?  serverError,TResult Function( String? msg,  StackTrace? st)?  serviceUnavailable,TResult Function( String? msg,  StackTrace? st)?  networkError,TResult Function( String? msg,  StackTrace? st)?  timeoutError,TResult Function( String? msg,  StackTrace? st)?  unauthenticatedError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CacheError() when cacheError != null:
return cacheError(_that.msg,_that.st);case _ServerError() when serverError != null:
return serverError(_that.msg,_that.st);case _ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable(_that.msg,_that.st);case _NetworkError() when networkError != null:
return networkError(_that.msg,_that.st);case _TimeoutError() when timeoutError != null:
return timeoutError(_that.msg,_that.st);case _UnauthenticatedError() when unauthenticatedError != null:
return unauthenticatedError(_that.msg,_that.st);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? msg,  StackTrace? st)  cacheError,required TResult Function( String? msg,  StackTrace? st)  serverError,required TResult Function( String? msg,  StackTrace? st)  serviceUnavailable,required TResult Function( String? msg,  StackTrace? st)  networkError,required TResult Function( String? msg,  StackTrace? st)  timeoutError,required TResult Function( String? msg,  StackTrace? st)  unauthenticatedError,}) {final _that = this;
switch (_that) {
case _CacheError():
return cacheError(_that.msg,_that.st);case _ServerError():
return serverError(_that.msg,_that.st);case _ServiceUnavailable():
return serviceUnavailable(_that.msg,_that.st);case _NetworkError():
return networkError(_that.msg,_that.st);case _TimeoutError():
return timeoutError(_that.msg,_that.st);case _UnauthenticatedError():
return unauthenticatedError(_that.msg,_that.st);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? msg,  StackTrace? st)?  cacheError,TResult? Function( String? msg,  StackTrace? st)?  serverError,TResult? Function( String? msg,  StackTrace? st)?  serviceUnavailable,TResult? Function( String? msg,  StackTrace? st)?  networkError,TResult? Function( String? msg,  StackTrace? st)?  timeoutError,TResult? Function( String? msg,  StackTrace? st)?  unauthenticatedError,}) {final _that = this;
switch (_that) {
case _CacheError() when cacheError != null:
return cacheError(_that.msg,_that.st);case _ServerError() when serverError != null:
return serverError(_that.msg,_that.st);case _ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable(_that.msg,_that.st);case _NetworkError() when networkError != null:
return networkError(_that.msg,_that.st);case _TimeoutError() when timeoutError != null:
return timeoutError(_that.msg,_that.st);case _UnauthenticatedError() when unauthenticatedError != null:
return unauthenticatedError(_that.msg,_that.st);case _:
  return null;

}
}

}

/// @nodoc


class _CacheError extends CoreException {
  const _CacheError({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CacheErrorCopyWith<_CacheError> get copyWith => __$CacheErrorCopyWithImpl<_CacheError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CacheError&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'CoreException.cacheError(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$CacheErrorCopyWith<$Res> implements $CoreExceptionCopyWith<$Res> {
  factory _$CacheErrorCopyWith(_CacheError value, $Res Function(_CacheError) _then) = __$CacheErrorCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$CacheErrorCopyWithImpl<$Res>
    implements _$CacheErrorCopyWith<$Res> {
  __$CacheErrorCopyWithImpl(this._self, this._then);

  final _CacheError _self;
  final $Res Function(_CacheError) _then;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_CacheError(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _ServerError extends CoreException {
  const _ServerError({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerErrorCopyWith<_ServerError> get copyWith => __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'CoreException.serverError(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$ServerErrorCopyWith<$Res> implements $CoreExceptionCopyWith<$Res> {
  factory _$ServerErrorCopyWith(_ServerError value, $Res Function(_ServerError) _then) = __$ServerErrorCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(this._self, this._then);

  final _ServerError _self;
  final $Res Function(_ServerError) _then;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_ServerError(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _ServiceUnavailable extends CoreException {
  const _ServiceUnavailable({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceUnavailableCopyWith<_ServiceUnavailable> get copyWith => __$ServiceUnavailableCopyWithImpl<_ServiceUnavailable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceUnavailable&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'CoreException.serviceUnavailable(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$ServiceUnavailableCopyWith<$Res> implements $CoreExceptionCopyWith<$Res> {
  factory _$ServiceUnavailableCopyWith(_ServiceUnavailable value, $Res Function(_ServiceUnavailable) _then) = __$ServiceUnavailableCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$ServiceUnavailableCopyWithImpl<$Res>
    implements _$ServiceUnavailableCopyWith<$Res> {
  __$ServiceUnavailableCopyWithImpl(this._self, this._then);

  final _ServiceUnavailable _self;
  final $Res Function(_ServiceUnavailable) _then;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_ServiceUnavailable(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _NetworkError extends CoreException {
  const _NetworkError({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkErrorCopyWith<_NetworkError> get copyWith => __$NetworkErrorCopyWithImpl<_NetworkError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkError&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'CoreException.networkError(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$NetworkErrorCopyWith<$Res> implements $CoreExceptionCopyWith<$Res> {
  factory _$NetworkErrorCopyWith(_NetworkError value, $Res Function(_NetworkError) _then) = __$NetworkErrorCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$NetworkErrorCopyWithImpl<$Res>
    implements _$NetworkErrorCopyWith<$Res> {
  __$NetworkErrorCopyWithImpl(this._self, this._then);

  final _NetworkError _self;
  final $Res Function(_NetworkError) _then;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_NetworkError(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _TimeoutError extends CoreException {
  const _TimeoutError({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeoutErrorCopyWith<_TimeoutError> get copyWith => __$TimeoutErrorCopyWithImpl<_TimeoutError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeoutError&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'CoreException.timeoutError(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$TimeoutErrorCopyWith<$Res> implements $CoreExceptionCopyWith<$Res> {
  factory _$TimeoutErrorCopyWith(_TimeoutError value, $Res Function(_TimeoutError) _then) = __$TimeoutErrorCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$TimeoutErrorCopyWithImpl<$Res>
    implements _$TimeoutErrorCopyWith<$Res> {
  __$TimeoutErrorCopyWithImpl(this._self, this._then);

  final _TimeoutError _self;
  final $Res Function(_TimeoutError) _then;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_TimeoutError(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _UnauthenticatedError extends CoreException {
  const _UnauthenticatedError({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnauthenticatedErrorCopyWith<_UnauthenticatedError> get copyWith => __$UnauthenticatedErrorCopyWithImpl<_UnauthenticatedError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnauthenticatedError&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'CoreException.unauthenticatedError(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$UnauthenticatedErrorCopyWith<$Res> implements $CoreExceptionCopyWith<$Res> {
  factory _$UnauthenticatedErrorCopyWith(_UnauthenticatedError value, $Res Function(_UnauthenticatedError) _then) = __$UnauthenticatedErrorCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$UnauthenticatedErrorCopyWithImpl<$Res>
    implements _$UnauthenticatedErrorCopyWith<$Res> {
  __$UnauthenticatedErrorCopyWithImpl(this._self, this._then);

  final _UnauthenticatedError _self;
  final $Res Function(_UnauthenticatedError) _then;

/// Create a copy of CoreException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_UnauthenticatedError(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
