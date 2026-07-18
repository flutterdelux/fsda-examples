// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskCreateRequest {

 String get title; String get description;
/// Create a copy of TaskCreateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskCreateRequestCopyWith<TaskCreateRequest> get copyWith => _$TaskCreateRequestCopyWithImpl<TaskCreateRequest>(this as TaskCreateRequest, _$identity);

  /// Serializes this TaskCreateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskCreateRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'TaskCreateRequest(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $TaskCreateRequestCopyWith<$Res>  {
  factory $TaskCreateRequestCopyWith(TaskCreateRequest value, $Res Function(TaskCreateRequest) _then) = _$TaskCreateRequestCopyWithImpl;
@useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class _$TaskCreateRequestCopyWithImpl<$Res>
    implements $TaskCreateRequestCopyWith<$Res> {
  _$TaskCreateRequestCopyWithImpl(this._self, this._then);

  final TaskCreateRequest _self;
  final $Res Function(TaskCreateRequest) _then;

/// Create a copy of TaskCreateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskCreateRequest].
extension TaskCreateRequestPatterns on TaskCreateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskCreateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskCreateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskCreateRequest value)  $default,){
final _that = this;
switch (_that) {
case _TaskCreateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskCreateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TaskCreateRequest() when $default != null:
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
case _TaskCreateRequest() when $default != null:
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
case _TaskCreateRequest():
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
case _TaskCreateRequest() when $default != null:
return $default(_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskCreateRequest extends TaskCreateRequest {
  const _TaskCreateRequest({required this.title, required this.description}): super._();
  factory _TaskCreateRequest.fromJson(Map<String, dynamic> json) => _$TaskCreateRequestFromJson(json);

@override final  String title;
@override final  String description;

/// Create a copy of TaskCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskCreateRequestCopyWith<_TaskCreateRequest> get copyWith => __$TaskCreateRequestCopyWithImpl<_TaskCreateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskCreateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskCreateRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'TaskCreateRequest(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$TaskCreateRequestCopyWith<$Res> implements $TaskCreateRequestCopyWith<$Res> {
  factory _$TaskCreateRequestCopyWith(_TaskCreateRequest value, $Res Function(_TaskCreateRequest) _then) = __$TaskCreateRequestCopyWithImpl;
@override @useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class __$TaskCreateRequestCopyWithImpl<$Res>
    implements _$TaskCreateRequestCopyWith<$Res> {
  __$TaskCreateRequestCopyWithImpl(this._self, this._then);

  final _TaskCreateRequest _self;
  final $Res Function(_TaskCreateRequest) _then;

/// Create a copy of TaskCreateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,}) {
  return _then(_TaskCreateRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
