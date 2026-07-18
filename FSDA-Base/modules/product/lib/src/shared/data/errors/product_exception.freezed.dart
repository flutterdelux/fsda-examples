// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductException {

 String? get msg; StackTrace? get st;
/// Create a copy of ProductException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductExceptionCopyWith<ProductException> get copyWith => _$ProductExceptionCopyWithImpl<ProductException>(this as ProductException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductException&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'ProductException(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class $ProductExceptionCopyWith<$Res>  {
  factory $ProductExceptionCopyWith(ProductException value, $Res Function(ProductException) _then) = _$ProductExceptionCopyWithImpl;
@useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class _$ProductExceptionCopyWithImpl<$Res>
    implements $ProductExceptionCopyWith<$Res> {
  _$ProductExceptionCopyWithImpl(this._self, this._then);

  final ProductException _self;
  final $Res Function(ProductException) _then;

/// Create a copy of ProductException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_self.copyWith(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductException].
extension ProductExceptionPatterns on ProductException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProductNotFound value)?  productNotFound,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductNotFound() when productNotFound != null:
return productNotFound(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProductNotFound value)  productNotFound,}){
final _that = this;
switch (_that) {
case _ProductNotFound():
return productNotFound(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProductNotFound value)?  productNotFound,}){
final _that = this;
switch (_that) {
case _ProductNotFound() when productNotFound != null:
return productNotFound(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? msg,  StackTrace? st)?  productNotFound,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductNotFound() when productNotFound != null:
return productNotFound(_that.msg,_that.st);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? msg,  StackTrace? st)  productNotFound,}) {final _that = this;
switch (_that) {
case _ProductNotFound():
return productNotFound(_that.msg,_that.st);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? msg,  StackTrace? st)?  productNotFound,}) {final _that = this;
switch (_that) {
case _ProductNotFound() when productNotFound != null:
return productNotFound(_that.msg,_that.st);case _:
  return null;

}
}

}

/// @nodoc


class _ProductNotFound extends ProductException {
  const _ProductNotFound({this.msg, this.st}): super._();
  

@override final  String? msg;
@override final  StackTrace? st;

/// Create a copy of ProductException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductNotFoundCopyWith<_ProductNotFound> get copyWith => __$ProductNotFoundCopyWithImpl<_ProductNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductNotFound&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.st, st) || other.st == st));
}


@override
int get hashCode => Object.hash(runtimeType,msg,st);

@override
String toString() {
  return 'ProductException.productNotFound(msg: $msg, st: $st)';
}


}

/// @nodoc
abstract mixin class _$ProductNotFoundCopyWith<$Res> implements $ProductExceptionCopyWith<$Res> {
  factory _$ProductNotFoundCopyWith(_ProductNotFound value, $Res Function(_ProductNotFound) _then) = __$ProductNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? msg, StackTrace? st
});




}
/// @nodoc
class __$ProductNotFoundCopyWithImpl<$Res>
    implements _$ProductNotFoundCopyWith<$Res> {
  __$ProductNotFoundCopyWithImpl(this._self, this._then);

  final _ProductNotFound _self;
  final $Res Function(_ProductNotFound) _then;

/// Create a copy of ProductException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = freezed,Object? st = freezed,}) {
  return _then(_ProductNotFound(
msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,st: freezed == st ? _self.st : st // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
