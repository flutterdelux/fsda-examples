// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QueueDto {

 int get id; String get queueNumber;@QueueStatusConverter() QueueStatus get status;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of QueueDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueueDtoCopyWith<QueueDto> get copyWith => _$QueueDtoCopyWithImpl<QueueDto>(this as QueueDto, _$identity);

  /// Serializes this QueueDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueueDto&&(identical(other.id, id) || other.id == id)&&(identical(other.queueNumber, queueNumber) || other.queueNumber == queueNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,queueNumber,status,createdAt,updatedAt);

@override
String toString() {
  return 'QueueDto(id: $id, queueNumber: $queueNumber, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $QueueDtoCopyWith<$Res>  {
  factory $QueueDtoCopyWith(QueueDto value, $Res Function(QueueDto) _then) = _$QueueDtoCopyWithImpl;
@useResult
$Res call({
 int id, String queueNumber,@QueueStatusConverter() QueueStatus status,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$QueueDtoCopyWithImpl<$Res>
    implements $QueueDtoCopyWith<$Res> {
  _$QueueDtoCopyWithImpl(this._self, this._then);

  final QueueDto _self;
  final $Res Function(QueueDto) _then;

/// Create a copy of QueueDto
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


/// Adds pattern-matching-related methods to [QueueDto].
extension QueueDtoPatterns on QueueDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QueueDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QueueDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QueueDto value)  $default,){
final _that = this;
switch (_that) {
case _QueueDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QueueDto value)?  $default,){
final _that = this;
switch (_that) {
case _QueueDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String queueNumber, @QueueStatusConverter()  QueueStatus status, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QueueDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String queueNumber, @QueueStatusConverter()  QueueStatus status, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _QueueDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String queueNumber, @QueueStatusConverter()  QueueStatus status, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _QueueDto() when $default != null:
return $default(_that.id,_that.queueNumber,_that.status,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QueueDto extends QueueDto {
  const _QueueDto({required this.id, required this.queueNumber, @QueueStatusConverter() required this.status, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt}): super._();
  factory _QueueDto.fromJson(Map<String, dynamic> json) => _$QueueDtoFromJson(json);

@override final  int id;
@override final  String queueNumber;
@override@QueueStatusConverter() final  QueueStatus status;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of QueueDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueueDtoCopyWith<_QueueDto> get copyWith => __$QueueDtoCopyWithImpl<_QueueDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QueueDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueueDto&&(identical(other.id, id) || other.id == id)&&(identical(other.queueNumber, queueNumber) || other.queueNumber == queueNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,queueNumber,status,createdAt,updatedAt);

@override
String toString() {
  return 'QueueDto(id: $id, queueNumber: $queueNumber, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$QueueDtoCopyWith<$Res> implements $QueueDtoCopyWith<$Res> {
  factory _$QueueDtoCopyWith(_QueueDto value, $Res Function(_QueueDto) _then) = __$QueueDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String queueNumber,@QueueStatusConverter() QueueStatus status,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$QueueDtoCopyWithImpl<$Res>
    implements _$QueueDtoCopyWith<$Res> {
  __$QueueDtoCopyWithImpl(this._self, this._then);

  final _QueueDto _self;
  final $Res Function(_QueueDto) _then;

/// Create a copy of QueueDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? queueNumber = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_QueueDto(
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
