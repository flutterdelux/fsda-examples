// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QueueEntity {

 int get id; String get queueNumber; QueueStatus get status; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of QueueEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueueEntityCopyWith<QueueEntity> get copyWith => _$QueueEntityCopyWithImpl<QueueEntity>(this as QueueEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueueEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.queueNumber, queueNumber) || other.queueNumber == queueNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,queueNumber,status,createdAt,updatedAt);

@override
String toString() {
  return 'QueueEntity(id: $id, queueNumber: $queueNumber, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $QueueEntityCopyWith<$Res>  {
  factory $QueueEntityCopyWith(QueueEntity value, $Res Function(QueueEntity) _then) = _$QueueEntityCopyWithImpl;
@useResult
$Res call({
 int id, String queueNumber, QueueStatus status, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$QueueEntityCopyWithImpl<$Res>
    implements $QueueEntityCopyWith<$Res> {
  _$QueueEntityCopyWithImpl(this._self, this._then);

  final QueueEntity _self;
  final $Res Function(QueueEntity) _then;

/// Create a copy of QueueEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? queueNumber = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,queueNumber: null == queueNumber ? _self.queueNumber : queueNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as QueueStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [QueueEntity].
extension QueueEntityPatterns on QueueEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QueueEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QueueEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QueueEntity value)  $default,){
final _that = this;
switch (_that) {
case _QueueEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QueueEntity value)?  $default,){
final _that = this;
switch (_that) {
case _QueueEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String queueNumber,  QueueStatus status,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QueueEntity() when $default != null:
return $default(_that.id,_that.queueNumber,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String queueNumber,  QueueStatus status,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _QueueEntity():
return $default(_that.id,_that.queueNumber,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String queueNumber,  QueueStatus status,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _QueueEntity() when $default != null:
return $default(_that.id,_that.queueNumber,_that.status,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _QueueEntity implements QueueEntity {
  const _QueueEntity({required this.id, required this.queueNumber, required this.status, required this.createdAt, required this.updatedAt});
  

@override final  int id;
@override final  String queueNumber;
@override final  QueueStatus status;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of QueueEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueueEntityCopyWith<_QueueEntity> get copyWith => __$QueueEntityCopyWithImpl<_QueueEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueueEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.queueNumber, queueNumber) || other.queueNumber == queueNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,queueNumber,status,createdAt,updatedAt);

@override
String toString() {
  return 'QueueEntity(id: $id, queueNumber: $queueNumber, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$QueueEntityCopyWith<$Res> implements $QueueEntityCopyWith<$Res> {
  factory _$QueueEntityCopyWith(_QueueEntity value, $Res Function(_QueueEntity) _then) = __$QueueEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String queueNumber, QueueStatus status, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$QueueEntityCopyWithImpl<$Res>
    implements _$QueueEntityCopyWith<$Res> {
  __$QueueEntityCopyWithImpl(this._self, this._then);

  final _QueueEntity _self;
  final $Res Function(_QueueEntity) _then;

/// Create a copy of QueueEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? queueNumber = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_QueueEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,queueNumber: null == queueNumber ? _self.queueNumber : queueNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as QueueStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
