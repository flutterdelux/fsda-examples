// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityListResponse {

 String get status; String get message; Map<String, dynamic>? get meta;@JsonKey(fromJson: _fromJson) List<CityDto>? get data; String? get code; List<String>? get errors;
/// Create a copy of CityListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityListResponseCopyWith<CityListResponse> get copyWith => _$CityListResponseCopyWithImpl<CityListResponse>(this as CityListResponse, _$identity);

  /// Serializes this CityListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityListResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(data),code,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'CityListResponse(status: $status, message: $message, meta: $meta, data: $data, code: $code, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $CityListResponseCopyWith<$Res>  {
  factory $CityListResponseCopyWith(CityListResponse value, $Res Function(CityListResponse) _then) = _$CityListResponseCopyWithImpl;
@useResult
$Res call({
 String status, String message, Map<String, dynamic>? meta,@JsonKey(fromJson: _fromJson) List<CityDto>? data, String? code, List<String>? errors
});




}
/// @nodoc
class _$CityListResponseCopyWithImpl<$Res>
    implements $CityListResponseCopyWith<$Res> {
  _$CityListResponseCopyWithImpl(this._self, this._then);

  final CityListResponse _self;
  final $Res Function(CityListResponse) _then;

/// Create a copy of CityListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? meta = freezed,Object? data = freezed,Object? code = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CityDto>?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CityListResponse].
extension CityListResponsePatterns on CityListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityListResponse value)  $default,){
final _that = this;
switch (_that) {
case _CityListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CityListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String message,  Map<String, dynamic>? meta, @JsonKey(fromJson: _fromJson)  List<CityDto>? data,  String? code,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityListResponse() when $default != null:
return $default(_that.status,_that.message,_that.meta,_that.data,_that.code,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String message,  Map<String, dynamic>? meta, @JsonKey(fromJson: _fromJson)  List<CityDto>? data,  String? code,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _CityListResponse():
return $default(_that.status,_that.message,_that.meta,_that.data,_that.code,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String message,  Map<String, dynamic>? meta, @JsonKey(fromJson: _fromJson)  List<CityDto>? data,  String? code,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _CityListResponse() when $default != null:
return $default(_that.status,_that.message,_that.meta,_that.data,_that.code,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityListResponse implements CityListResponse {
  const _CityListResponse({required this.status, required this.message, final  Map<String, dynamic>? meta, @JsonKey(fromJson: _fromJson) final  List<CityDto>? data, this.code, final  List<String>? errors}): _meta = meta,_data = data,_errors = errors;
  factory _CityListResponse.fromJson(Map<String, dynamic> json) => _$CityListResponseFromJson(json);

@override final  String status;
@override final  String message;
 final  Map<String, dynamic>? _meta;
@override Map<String, dynamic>? get meta {
  final value = _meta;
  if (value == null) return null;
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<CityDto>? _data;
@override@JsonKey(fromJson: _fromJson) List<CityDto>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? code;
 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CityListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityListResponseCopyWith<_CityListResponse> get copyWith => __$CityListResponseCopyWithImpl<_CityListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityListResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_data),code,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'CityListResponse(status: $status, message: $message, meta: $meta, data: $data, code: $code, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$CityListResponseCopyWith<$Res> implements $CityListResponseCopyWith<$Res> {
  factory _$CityListResponseCopyWith(_CityListResponse value, $Res Function(_CityListResponse) _then) = __$CityListResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String message, Map<String, dynamic>? meta,@JsonKey(fromJson: _fromJson) List<CityDto>? data, String? code, List<String>? errors
});




}
/// @nodoc
class __$CityListResponseCopyWithImpl<$Res>
    implements _$CityListResponseCopyWith<$Res> {
  __$CityListResponseCopyWithImpl(this._self, this._then);

  final _CityListResponse _self;
  final $Res Function(_CityListResponse) _then;

/// Create a copy of CityListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? meta = freezed,Object? data = freezed,Object? code = freezed,Object? errors = freezed,}) {
  return _then(_CityListResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,meta: freezed == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CityDto>?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
