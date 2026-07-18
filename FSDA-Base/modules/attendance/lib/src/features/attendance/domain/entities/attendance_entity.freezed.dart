// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceEntity {

 int get id; String get userId; AttendanceType get type; DateTime get clockAt; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of AttendanceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceEntityCopyWith<AttendanceEntity> get copyWith => _$AttendanceEntityCopyWithImpl<AttendanceEntity>(this as AttendanceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.clockAt, clockAt) || other.clockAt == clockAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,type,clockAt,createdAt,updatedAt);

@override
String toString() {
  return 'AttendanceEntity(id: $id, userId: $userId, type: $type, clockAt: $clockAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AttendanceEntityCopyWith<$Res>  {
  factory $AttendanceEntityCopyWith(AttendanceEntity value, $Res Function(AttendanceEntity) _then) = _$AttendanceEntityCopyWithImpl;
@useResult
$Res call({
 int id, String userId, AttendanceType type, DateTime clockAt, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$AttendanceEntityCopyWithImpl<$Res>
    implements $AttendanceEntityCopyWith<$Res> {
  _$AttendanceEntityCopyWithImpl(this._self, this._then);

  final AttendanceEntity _self;
  final $Res Function(AttendanceEntity) _then;

/// Create a copy of AttendanceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? clockAt = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AttendanceType,clockAt: null == clockAt ? _self.clockAt : clockAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceEntity].
extension AttendanceEntityPatterns on AttendanceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceEntity value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String userId,  AttendanceType type,  DateTime clockAt,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceEntity() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.clockAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String userId,  AttendanceType type,  DateTime clockAt,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AttendanceEntity():
return $default(_that.id,_that.userId,_that.type,_that.clockAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String userId,  AttendanceType type,  DateTime clockAt,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceEntity() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.clockAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceEntity implements AttendanceEntity {
  const _AttendanceEntity({required this.id, required this.userId, required this.type, required this.clockAt, required this.createdAt, required this.updatedAt});
  

@override final  int id;
@override final  String userId;
@override final  AttendanceType type;
@override final  DateTime clockAt;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of AttendanceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceEntityCopyWith<_AttendanceEntity> get copyWith => __$AttendanceEntityCopyWithImpl<_AttendanceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.clockAt, clockAt) || other.clockAt == clockAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,type,clockAt,createdAt,updatedAt);

@override
String toString() {
  return 'AttendanceEntity(id: $id, userId: $userId, type: $type, clockAt: $clockAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AttendanceEntityCopyWith<$Res> implements $AttendanceEntityCopyWith<$Res> {
  factory _$AttendanceEntityCopyWith(_AttendanceEntity value, $Res Function(_AttendanceEntity) _then) = __$AttendanceEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String userId, AttendanceType type, DateTime clockAt, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$AttendanceEntityCopyWithImpl<$Res>
    implements _$AttendanceEntityCopyWith<$Res> {
  __$AttendanceEntityCopyWithImpl(this._self, this._then);

  final _AttendanceEntity _self;
  final $Res Function(_AttendanceEntity) _then;

/// Create a copy of AttendanceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? clockAt = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_AttendanceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AttendanceType,clockAt: null == clockAt ? _self.clockAt : clockAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
