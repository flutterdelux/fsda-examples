// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetailRequest {

 int get id;
/// Create a copy of ProductDetailRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailRequestCopyWith<ProductDetailRequest> get copyWith => _$ProductDetailRequestCopyWithImpl<ProductDetailRequest>(this as ProductDetailRequest, _$identity);

  /// Serializes this ProductDetailRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailRequest&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductDetailRequest(id: $id)';
}


}

/// @nodoc
abstract mixin class $ProductDetailRequestCopyWith<$Res>  {
  factory $ProductDetailRequestCopyWith(ProductDetailRequest value, $Res Function(ProductDetailRequest) _then) = _$ProductDetailRequestCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$ProductDetailRequestCopyWithImpl<$Res>
    implements $ProductDetailRequestCopyWith<$Res> {
  _$ProductDetailRequestCopyWithImpl(this._self, this._then);

  final ProductDetailRequest _self;
  final $Res Function(ProductDetailRequest) _then;

/// Create a copy of ProductDetailRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDetailRequest].
extension ProductDetailRequestPatterns on ProductDetailRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailRequest value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailRequest() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailRequest():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailRequest() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDetailRequest extends ProductDetailRequest {
  const _ProductDetailRequest({required this.id}): super._();
  factory _ProductDetailRequest.fromJson(Map<String, dynamic> json) => _$ProductDetailRequestFromJson(json);

@override final  int id;

/// Create a copy of ProductDetailRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailRequestCopyWith<_ProductDetailRequest> get copyWith => __$ProductDetailRequestCopyWithImpl<_ProductDetailRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDetailRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailRequest&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductDetailRequest(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailRequestCopyWith<$Res> implements $ProductDetailRequestCopyWith<$Res> {
  factory _$ProductDetailRequestCopyWith(_ProductDetailRequest value, $Res Function(_ProductDetailRequest) _then) = __$ProductDetailRequestCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$ProductDetailRequestCopyWithImpl<$Res>
    implements _$ProductDetailRequestCopyWith<$Res> {
  __$ProductDetailRequestCopyWithImpl(this._self, this._then);

  final _ProductDetailRequest _self;
  final $Res Function(_ProductDetailRequest) _then;

/// Create a copy of ProductDetailRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_ProductDetailRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
