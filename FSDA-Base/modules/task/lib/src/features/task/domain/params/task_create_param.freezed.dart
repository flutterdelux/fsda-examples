// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_create_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TaskCreateParam {

 String get title; String get description;
/// Create a copy of TaskCreateParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskCreateParamCopyWith<TaskCreateParam> get copyWith => _$TaskCreateParamCopyWithImpl<TaskCreateParam>(this as TaskCreateParam, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskCreateParam&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'TaskCreateParam(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $TaskCreateParamCopyWith<$Res>  {
  factory $TaskCreateParamCopyWith(TaskCreateParam value, $Res Function(TaskCreateParam) _then) = _$TaskCreateParamCopyWithImpl;
@useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class _$TaskCreateParamCopyWithImpl<$Res>
    implements $TaskCreateParamCopyWith<$Res> {
  _$TaskCreateParamCopyWithImpl(this._self, this._then);

  final TaskCreateParam _self;
  final $Res Function(TaskCreateParam) _then;

/// Create a copy of TaskCreateParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskCreateParam].
extension TaskCreateParamPatterns on TaskCreateParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskCreateParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskCreateParam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskCreateParam value)  $default,){
final _that = this;
switch (_that) {
case _TaskCreateParam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskCreateParam value)?  $default,){
final _that = this;
switch (_that) {
case _TaskCreateParam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskCreateParam() when $default != null:
return $default(_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description)  $default,) {final _that = this;
switch (_that) {
case _TaskCreateParam():
return $default(_that.title,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description)?  $default,) {final _that = this;
switch (_that) {
case _TaskCreateParam() when $default != null:
return $default(_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _TaskCreateParam implements TaskCreateParam {
  const _TaskCreateParam({required this.title, required this.description});
  

@override final  String title;
@override final  String description;

/// Create a copy of TaskCreateParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskCreateParamCopyWith<_TaskCreateParam> get copyWith => __$TaskCreateParamCopyWithImpl<_TaskCreateParam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskCreateParam&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'TaskCreateParam(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$TaskCreateParamCopyWith<$Res> implements $TaskCreateParamCopyWith<$Res> {
  factory _$TaskCreateParamCopyWith(_TaskCreateParam value, $Res Function(_TaskCreateParam) _then) = __$TaskCreateParamCopyWithImpl;
@override @useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class __$TaskCreateParamCopyWithImpl<$Res>
    implements _$TaskCreateParamCopyWith<$Res> {
  __$TaskCreateParamCopyWithImpl(this._self, this._then);

  final _TaskCreateParam _self;
  final $Res Function(_TaskCreateParam) _then;

/// Create a copy of TaskCreateParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,}) {
  return _then(_TaskCreateParam(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
