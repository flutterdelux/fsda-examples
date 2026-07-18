// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceException {

 String? get msg; StackTrace? get st;
/// Create a copy of AttendanceException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceExceptionCopyWith<AttendanceException> get copyWith => _$AttendanceExceptionCopyWithImpl<AttendanceException>(this as AttendanceException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceException&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'AttendanceException(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class $AttendanceExceptionCopyWith<$Res>  {
  factory $AttendanceExceptionCopyWith(AttendanceException value, $Res Function(AttendanceException) _then) = _$AttendanceExceptionCopyWithImpl;
@useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class _$AttendanceExceptionCopyWithImpl<$Res>
    implements $AttendanceExceptionCopyWith<$Res> {
  _$AttendanceExceptionCopyWithImpl(this._self, this._then);

  final AttendanceException _self;
  final $Res Function(AttendanceException) _then;

/// Create a copy of AttendanceException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_self.copyWith(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceException].
extension AttendanceExceptionPatterns on AttendanceException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AttendanceNotFound value)?  attendanceNotFound,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceNotFound() when attendanceNotFound != null:
return attendanceNotFound(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AttendanceNotFound value)  attendanceNotFound,}){
final _that = this;
switch (_that) {
case _AttendanceNotFound():
return attendanceNotFound(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AttendanceNotFound value)?  attendanceNotFound,}){
final _that = this;
switch (_that) {
case _AttendanceNotFound() when attendanceNotFound != null:
return attendanceNotFound(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? msg,  StackTrace? st)?  attendanceNotFound,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceNotFound() when attendanceNotFound != null:
return attendanceNotFound(_that.msg,_that.st);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? msg,  StackTrace? st)  attendanceNotFound,}) {final _that = this;
switch (_that) {
case _AttendanceNotFound():
return attendanceNotFound(_that.msg,_that.st);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? msg,  StackTrace? st)?  attendanceNotFound,}) {final _that = this;
switch (_that) {
case _AttendanceNotFound() when attendanceNotFound != null:
return attendanceNotFound(_that.msg,_that.st);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceNotFound extends AttendanceException {
  const _AttendanceNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of AttendanceException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceNotFoundCopyWith<_AttendanceNotFound> get copyWith => __$AttendanceNotFoundCopyWithImpl<_AttendanceNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'AttendanceException.attendanceNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$AttendanceNotFoundCopyWith<$Res> implements $AttendanceExceptionCopyWith<$Res> {
  factory _$AttendanceNotFoundCopyWith(_AttendanceNotFound value, $Res Function(_AttendanceNotFound) _then) = __$AttendanceNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$AttendanceNotFoundCopyWithImpl<$Res>
    implements _$AttendanceNotFoundCopyWith<$Res> {
  __$AttendanceNotFoundCopyWithImpl(this._self, this._then);

  final _AttendanceNotFound _self;
  final $Res Function(_AttendanceNotFound) _then;

/// Create a copy of AttendanceException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_AttendanceNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
