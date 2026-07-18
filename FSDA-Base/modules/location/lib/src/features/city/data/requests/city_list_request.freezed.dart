// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityListRequest {

 int get page; int get pageSize;
/// Create a copy of CityListRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityListRequestCopyWith<CityListRequest> get copyWith => _$CityListRequestCopyWithImpl<CityListRequest>(this as CityListRequest, _$identity);

  /// Serializes this CityListRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityListRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pageSize);

@override
String toString() {
  return 'CityListRequest(page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class $CityListRequestCopyWith<$Res>  {
  factory $CityListRequestCopyWith(CityListRequest value, $Res Function(CityListRequest) _then) = _$CityListRequestCopyWithImpl;
@useResult
$Res call({
 int page, int pageSize
});




}
/// @nodoc
class _$CityListRequestCopyWithImpl<$Res>
    implements $CityListRequestCopyWith<$Res> {
  _$CityListRequestCopyWithImpl(this._self, this._then);

  final CityListRequest _self;
  final $Res Function(CityListRequest) _then;

/// Create a copy of CityListRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? pageSize = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CityListRequest].
extension CityListRequestPatterns on CityListRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityListRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityListRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityListRequest value)  $default,){
final _that = this;
switch (_that) {
case _CityListRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityListRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CityListRequest() when $default != null:
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
case _CityListRequest() when $default != null:
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
case _CityListRequest():
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
case _CityListRequest() when $default != null:
return $default(_that.page,_that.pageSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityListRequest extends CityListRequest {
  const _CityListRequest({required this.page, required this.pageSize}): super._();
  factory _CityListRequest.fromJson(Map<String, dynamic> json) => _$CityListRequestFromJson(json);

@override final  int page;
@override final  int pageSize;

/// Create a copy of CityListRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityListRequestCopyWith<_CityListRequest> get copyWith => __$CityListRequestCopyWithImpl<_CityListRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityListRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityListRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pageSize);

@override
String toString() {
  return 'CityListRequest(page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class _$CityListRequestCopyWith<$Res> implements $CityListRequestCopyWith<$Res> {
  factory _$CityListRequestCopyWith(_CityListRequest value, $Res Function(_CityListRequest) _then) = __$CityListRequestCopyWithImpl;
@override @useResult
$Res call({
 int page, int pageSize
});




}
/// @nodoc
class __$CityListRequestCopyWithImpl<$Res>
    implements _$CityListRequestCopyWith<$Res> {
  __$CityListRequestCopyWithImpl(this._self, this._then);

  final _CityListRequest _self;
  final $Res Function(_CityListRequest) _then;

/// Create a copy of CityListRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? pageSize = null,}) {
  return _then(_CityListRequest(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
