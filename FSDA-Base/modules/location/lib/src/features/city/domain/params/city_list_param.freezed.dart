// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CityListParam {

 int get page; int get pageSize;
/// Create a copy of CityListParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityListParamCopyWith<CityListParam> get copyWith => _$CityListParamCopyWithImpl<CityListParam>(this as CityListParam, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityListParam&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}


@override
int get hashCode => Object.hash(runtimeType,page,pageSize);

@override
String toString() {
  return 'CityListParam(page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class $CityListParamCopyWith<$Res>  {
  factory $CityListParamCopyWith(CityListParam value, $Res Function(CityListParam) _then) = _$CityListParamCopyWithImpl;
@useResult
$Res call({
 int page, int pageSize
});




}
/// @nodoc
class _$CityListParamCopyWithImpl<$Res>
    implements $CityListParamCopyWith<$Res> {
  _$CityListParamCopyWithImpl(this._self, this._then);

  final CityListParam _self;
  final $Res Function(CityListParam) _then;

/// Create a copy of CityListParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? pageSize = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CityListParam].
extension CityListParamPatterns on CityListParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityListParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityListParam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityListParam value)  $default,){
final _that = this;
switch (_that) {
case _CityListParam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityListParam value)?  $default,){
final _that = this;
switch (_that) {
case _CityListParam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int pageSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityListParam() when $default != null:
return $default(_that.page,_that.pageSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int pageSize)  $default,) {final _that = this;
switch (_that) {
case _CityListParam():
return $default(_that.page,_that.pageSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int pageSize)?  $default,) {final _that = this;
switch (_that) {
case _CityListParam() when $default != null:
return $default(_that.page,_that.pageSize);case _:
  return null;

}
}

}

/// @nodoc


class _CityListParam implements CityListParam {
  const _CityListParam({this.page = 1, this.pageSize = 15});
  

@override@JsonKey() final  int page;
@override@JsonKey() final  int pageSize;

/// Create a copy of CityListParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityListParamCopyWith<_CityListParam> get copyWith => __$CityListParamCopyWithImpl<_CityListParam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityListParam&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}


@override
int get hashCode => Object.hash(runtimeType,page,pageSize);

@override
String toString() {
  return 'CityListParam(page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class _$CityListParamCopyWith<$Res> implements $CityListParamCopyWith<$Res> {
  factory _$CityListParamCopyWith(_CityListParam value, $Res Function(_CityListParam) _then) = __$CityListParamCopyWithImpl;
@override @useResult
$Res call({
 int page, int pageSize
});




}
/// @nodoc
class __$CityListParamCopyWithImpl<$Res>
    implements _$CityListParamCopyWith<$Res> {
  __$CityListParamCopyWithImpl(this._self, this._then);

  final _CityListParam _self;
  final $Res Function(_CityListParam) _then;

/// Create a copy of CityListParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? pageSize = null,}) {
  return _then(_CityListParam(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
