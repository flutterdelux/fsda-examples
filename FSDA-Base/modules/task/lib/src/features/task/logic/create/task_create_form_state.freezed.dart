// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_create_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TaskCreateFormState {

 TaskCreateParam? get param; String? get invalidMessage;
/// Create a copy of TaskCreateFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskCreateFormStateCopyWith<TaskCreateFormState> get copyWith => _$TaskCreateFormStateCopyWithImpl<TaskCreateFormState>(this as TaskCreateFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskCreateFormState&&(identical(other.param, param) || other.param == param)&&(identical(other.invalidMessage, invalidMessage) || other.invalidMessage == invalidMessage));
}


@override
int get hashCode => Object.hash(runtimeType,param,invalidMessage);

@override
String toString() {
  return 'TaskCreateFormState(param: $param, invalidMessage: $invalidMessage)';
}


}

/// @nodoc
abstract mixin class $TaskCreateFormStateCopyWith<$Res>  {
  factory $TaskCreateFormStateCopyWith(TaskCreateFormState value, $Res Function(TaskCreateFormState) _then) = _$TaskCreateFormStateCopyWithImpl;
@useResult
$Res call({
 TaskCreateParam? param, String? invalidMessage
});


$TaskCreateParamCopyWith<$Res>? get param;

}
/// @nodoc
class _$TaskCreateFormStateCopyWithImpl<$Res>
    implements $TaskCreateFormStateCopyWith<$Res> {
  _$TaskCreateFormStateCopyWithImpl(this._self, this._then);

  final TaskCreateFormState _self;
  final $Res Function(TaskCreateFormState) _then;

/// Create a copy of TaskCreateFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? param = freezed,Object? invalidMessage = freezed,}) {
  return _then(_self.copyWith(
param: freezed == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as TaskCreateParam?,invalidMessage: freezed == invalidMessage ? _self.invalidMessage : invalidMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TaskCreateFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCreateParamCopyWith<$Res>? get param {
    if (_self.param == null) {
    return null;
  }

  return $TaskCreateParamCopyWith<$Res>(_self.param!, (value) {
    return _then(_self.copyWith(param: value));
  });
}
}


/// Adds pattern-matching-related methods to [TaskCreateFormState].
extension TaskCreateFormStatePatterns on TaskCreateFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskCreateFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskCreateFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskCreateFormState value)  $default,){
final _that = this;
switch (_that) {
case _TaskCreateFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskCreateFormState value)?  $default,){
final _that = this;
switch (_that) {
case _TaskCreateFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TaskCreateParam? param,  String? invalidMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskCreateFormState() when $default != null:
return $default(_that.param,_that.invalidMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TaskCreateParam? param,  String? invalidMessage)  $default,) {final _that = this;
switch (_that) {
case _TaskCreateFormState():
return $default(_that.param,_that.invalidMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TaskCreateParam? param,  String? invalidMessage)?  $default,) {final _that = this;
switch (_that) {
case _TaskCreateFormState() when $default != null:
return $default(_that.param,_that.invalidMessage);case _:
  return null;

}
}

}

/// @nodoc


class _TaskCreateFormState implements TaskCreateFormState {
  const _TaskCreateFormState({this.param, this.invalidMessage});
  

@override final  TaskCreateParam? param;
@override final  String? invalidMessage;

/// Create a copy of TaskCreateFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskCreateFormStateCopyWith<_TaskCreateFormState> get copyWith => __$TaskCreateFormStateCopyWithImpl<_TaskCreateFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskCreateFormState&&(identical(other.param, param) || other.param == param)&&(identical(other.invalidMessage, invalidMessage) || other.invalidMessage == invalidMessage));
}


@override
int get hashCode => Object.hash(runtimeType,param,invalidMessage);

@override
String toString() {
  return 'TaskCreateFormState(param: $param, invalidMessage: $invalidMessage)';
}


}

/// @nodoc
abstract mixin class _$TaskCreateFormStateCopyWith<$Res> implements $TaskCreateFormStateCopyWith<$Res> {
  factory _$TaskCreateFormStateCopyWith(_TaskCreateFormState value, $Res Function(_TaskCreateFormState) _then) = __$TaskCreateFormStateCopyWithImpl;
@override @useResult
$Res call({
 TaskCreateParam? param, String? invalidMessage
});


@override $TaskCreateParamCopyWith<$Res>? get param;

}
/// @nodoc
class __$TaskCreateFormStateCopyWithImpl<$Res>
    implements _$TaskCreateFormStateCopyWith<$Res> {
  __$TaskCreateFormStateCopyWithImpl(this._self, this._then);

  final _TaskCreateFormState _self;
  final $Res Function(_TaskCreateFormState) _then;

/// Create a copy of TaskCreateFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? param = freezed,Object? invalidMessage = freezed,}) {
  return _then(_TaskCreateFormState(
param: freezed == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as TaskCreateParam?,invalidMessage: freezed == invalidMessage ? _self.invalidMessage : invalidMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TaskCreateFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCreateParamCopyWith<$Res>? get param {
    if (_self.param == null) {
    return null;
  }

  return $TaskCreateParamCopyWith<$Res>(_self.param!, (value) {
    return _then(_self.copyWith(param: value));
  });
}
}

// dart format on
