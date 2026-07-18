// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DestinationEntity {

 int get id; String get name; String get description; String get imageUrl; double get rating; int get reviewCount; bool get isPopular; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of DestinationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DestinationEntityCopyWith<DestinationEntity> get copyWith => _$DestinationEntityCopyWithImpl<DestinationEntity>(this as DestinationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DestinationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,imageUrl,rating,reviewCount,isPopular,createdAt,updatedAt);

@override
String toString() {
  return 'DestinationEntity(id: $id, name: $name, description: $description, imageUrl: $imageUrl, rating: $rating, reviewCount: $reviewCount, isPopular: $isPopular, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DestinationEntityCopyWith<$Res>  {
  factory $DestinationEntityCopyWith(DestinationEntity value, $Res Function(DestinationEntity) _then) = _$DestinationEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, String imageUrl, double rating, int reviewCount, bool isPopular, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$DestinationEntityCopyWithImpl<$Res>
    implements $DestinationEntityCopyWith<$Res> {
  _$DestinationEntityCopyWithImpl(this._self, this._then);

  final DestinationEntity _self;
  final $Res Function(DestinationEntity) _then;

/// Create a copy of DestinationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? rating = null,Object? reviewCount = null,Object? isPopular = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DestinationEntity].
extension DestinationEntityPatterns on DestinationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DestinationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DestinationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DestinationEntity value)  $default,){
final _that = this;
switch (_that) {
case _DestinationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DestinationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DestinationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String imageUrl,  double rating,  int reviewCount,  bool isPopular,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DestinationEntity() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.rating,_that.reviewCount,_that.isPopular,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String imageUrl,  double rating,  int reviewCount,  bool isPopular,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DestinationEntity():
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.rating,_that.reviewCount,_that.isPopular,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  String imageUrl,  double rating,  int reviewCount,  bool isPopular,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DestinationEntity() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.rating,_that.reviewCount,_that.isPopular,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _DestinationEntity implements DestinationEntity {
  const _DestinationEntity({required this.id, required this.name, required this.description, required this.imageUrl, required this.rating, required this.reviewCount, required this.isPopular, required this.createdAt, required this.updatedAt});
  

@override final  int id;
@override final  String name;
@override final  String description;
@override final  String imageUrl;
@override final  double rating;
@override final  int reviewCount;
@override final  bool isPopular;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of DestinationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DestinationEntityCopyWith<_DestinationEntity> get copyWith => __$DestinationEntityCopyWithImpl<_DestinationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DestinationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,imageUrl,rating,reviewCount,isPopular,createdAt,updatedAt);

@override
String toString() {
  return 'DestinationEntity(id: $id, name: $name, description: $description, imageUrl: $imageUrl, rating: $rating, reviewCount: $reviewCount, isPopular: $isPopular, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DestinationEntityCopyWith<$Res> implements $DestinationEntityCopyWith<$Res> {
  factory _$DestinationEntityCopyWith(_DestinationEntity value, $Res Function(_DestinationEntity) _then) = __$DestinationEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, String imageUrl, double rating, int reviewCount, bool isPopular, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$DestinationEntityCopyWithImpl<$Res>
    implements _$DestinationEntityCopyWith<$Res> {
  __$DestinationEntityCopyWithImpl(this._self, this._then);

  final _DestinationEntity _self;
  final $Res Function(_DestinationEntity) _then;

/// Create a copy of DestinationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? rating = null,Object? reviewCount = null,Object? isPopular = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DestinationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
