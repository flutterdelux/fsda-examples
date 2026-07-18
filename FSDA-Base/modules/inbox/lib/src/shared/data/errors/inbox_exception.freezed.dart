// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inbox_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InboxException {

 String? get msg; StackTrace? get st;
/// Create a copy of InboxException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboxExceptionCopyWith<InboxException> get copyWith => _$InboxExceptionCopyWithImpl<InboxException>(this as InboxException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboxException&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'InboxException(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class $InboxExceptionCopyWith<$Res>  {
  factory $InboxExceptionCopyWith(InboxException value, $Res Function(InboxException) _then) = _$InboxExceptionCopyWithImpl;
@useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class _$InboxExceptionCopyWithImpl<$Res>
    implements $InboxExceptionCopyWith<$Res> {
  _$InboxExceptionCopyWithImpl(this._self, this._then);

  final InboxException _self;
  final $Res Function(InboxException) _then;

/// Create a copy of InboxException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_self.copyWith(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}


/// Adds pattern-matching-related methods to [InboxException].
extension InboxExceptionPatterns on InboxException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InboxNotFound value)?  inboxNotFound,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboxNotFound() when inboxNotFound != null:
return inboxNotFound(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InboxNotFound value)  inboxNotFound,}){
final _that = this;
switch (_that) {
case _InboxNotFound():
return inboxNotFound(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InboxNotFound value)?  inboxNotFound,}){
final _that = this;
switch (_that) {
case _InboxNotFound() when inboxNotFound != null:
return inboxNotFound(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? msg,  StackTrace? st)?  inboxNotFound,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboxNotFound() when inboxNotFound != null:
return inboxNotFound(_that.msg,_that.st);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? msg,  StackTrace? st)  inboxNotFound,}) {final _that = this;
switch (_that) {
case _InboxNotFound():
return inboxNotFound(_that.msg,_that.st);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? msg,  StackTrace? st)?  inboxNotFound,}) {final _that = this;
switch (_that) {
case _InboxNotFound() when inboxNotFound != null:
return inboxNotFound(_that.msg,_that.st);case _:
  return null;

}
}

}

/// @nodoc


class _InboxNotFound extends InboxException {
  const _InboxNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of InboxException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboxNotFoundCopyWith<_InboxNotFound> get copyWith => __$InboxNotFoundCopyWithImpl<_InboxNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InboxNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'InboxException.inboxNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$InboxNotFoundCopyWith<$Res> implements $InboxExceptionCopyWith<$Res> {
  factory _$InboxNotFoundCopyWith(_InboxNotFound value, $Res Function(_InboxNotFound) _then) = __$InboxNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$InboxNotFoundCopyWithImpl<$Res>
    implements _$InboxNotFoundCopyWith<$Res> {
  __$InboxNotFoundCopyWithImpl(this._self, this._then);

  final _InboxNotFound _self;
  final $Res Function(_InboxNotFound) _then;

/// Create a copy of InboxException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_InboxNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
