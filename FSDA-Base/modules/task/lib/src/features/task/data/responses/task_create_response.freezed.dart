// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_create_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskCreateResponse {

 String get status; String get message;@JsonKey(fromJson: _taskFromJson) TaskDto? get data; String? get code; List<String>? get errors;
/// Create a copy of TaskCreateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskCreateResponseCopyWith<TaskCreateResponse> get copyWith => _$TaskCreateResponseCopyWithImpl<TaskCreateResponse>(this as TaskCreateResponse, _$identity);

  /// Serializes this TaskCreateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskCreateResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data,code,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'TaskCreateResponse(status: $status, message: $message, data: $data, code: $code, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $TaskCreateResponseCopyWith<$Res>  {
  factory $TaskCreateResponseCopyWith(TaskCreateResponse value, $Res Function(TaskCreateResponse) _then) = _$TaskCreateResponseCopyWithImpl;
@useResult
$Res call({
 String status, String message,@JsonKey(fromJson: _taskFromJson) TaskDto? data, String? code, List<String>? errors
});


$TaskDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$TaskCreateResponseCopyWithImpl<$Res>
    implements $TaskCreateResponseCopyWith<$Res> {
  _$TaskCreateResponseCopyWithImpl(this._self, this._then);

  final TaskCreateResponse _self;
  final $Res Function(TaskCreateResponse) _then;

/// Create a copy of TaskCreateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = freezed,Object? code = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TaskDto?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of TaskCreateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $TaskDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TaskCreateResponse].
extension TaskCreateResponsePatterns on TaskCreateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskCreateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskCreateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskCreateResponse value)  $default,){
final _that = this;
switch (_that) {
case _TaskCreateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskCreateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TaskCreateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String message, @JsonKey(fromJson: _taskFromJson)  TaskDto? data,  String? code,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskCreateResponse() when $default != null:
return $default(_that.status,_that.message,_that.data,_that.code,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String message, @JsonKey(fromJson: _taskFromJson)  TaskDto? data,  String? code,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _TaskCreateResponse():
return $default(_that.status,_that.message,_that.data,_that.code,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String message, @JsonKey(fromJson: _taskFromJson)  TaskDto? data,  String? code,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _TaskCreateResponse() when $default != null:
return $default(_that.status,_that.message,_that.data,_that.code,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskCreateResponse implements TaskCreateResponse {
  const _TaskCreateResponse({required this.status, required this.message, @JsonKey(fromJson: _taskFromJson) this.data, this.code, final  List<String>? errors}): _errors = errors;
  factory _TaskCreateResponse.fromJson(Map<String, dynamic> json) => _$TaskCreateResponseFromJson(json);

@override final  String status;
@override final  String message;
@override@JsonKey(fromJson: _taskFromJson) final  TaskDto? data;
@override final  String? code;
 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TaskCreateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskCreateResponseCopyWith<_TaskCreateResponse> get copyWith => __$TaskCreateResponseCopyWithImpl<_TaskCreateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskCreateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskCreateResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data,code,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'TaskCreateResponse(status: $status, message: $message, data: $data, code: $code, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$TaskCreateResponseCopyWith<$Res> implements $TaskCreateResponseCopyWith<$Res> {
  factory _$TaskCreateResponseCopyWith(_TaskCreateResponse value, $Res Function(_TaskCreateResponse) _then) = __$TaskCreateResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String message,@JsonKey(fromJson: _taskFromJson) TaskDto? data, String? code, List<String>? errors
});


@override $TaskDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$TaskCreateResponseCopyWithImpl<$Res>
    implements _$TaskCreateResponseCopyWith<$Res> {
  __$TaskCreateResponseCopyWithImpl(this._self, this._then);

  final _TaskCreateResponse _self;
  final $Res Function(_TaskCreateResponse) _then;

/// Create a copy of TaskCreateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = freezed,Object? code = freezed,Object? errors = freezed,}) {
  return _then(_TaskCreateResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TaskDto?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of TaskCreateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $TaskDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
