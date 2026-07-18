// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CityListState {

 List<CityEntity> get list; bool get hasReachedMax; bool get isLoading; Failure? get failure; CityListParam get param;
/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityListStateCopyWith<CityListState> get copyWith => _$CityListStateCopyWithImpl<CityListState>(this as CityListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityListState&&const DeepCollectionEquality().equals(other.list, list)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list),hasReachedMax,isLoading,failure,param);

@override
String toString() {
  return 'CityListState(list: $list, hasReachedMax: $hasReachedMax, isLoading: $isLoading, failure: $failure, param: $param)';
}


}

/// @nodoc
abstract mixin class $CityListStateCopyWith<$Res>  {
  factory $CityListStateCopyWith(CityListState value, $Res Function(CityListState) _then) = _$CityListStateCopyWithImpl;
@useResult
$Res call({
 List<CityEntity> list, bool hasReachedMax, bool isLoading, Failure? failure, CityListParam param
});


$CityListParamCopyWith<$Res> get param;

}
/// @nodoc
class _$CityListStateCopyWithImpl<$Res>
    implements $CityListStateCopyWith<$Res> {
  _$CityListStateCopyWithImpl(this._self, this._then);

  final CityListState _self;
  final $Res Function(CityListState) _then;

/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = null,Object? hasReachedMax = null,Object? isLoading = null,Object? failure = freezed,Object? param = null,}) {
  return _then(_self.copyWith(
list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<CityEntity>,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as CityListParam,
  ));
}
/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityListParamCopyWith<$Res> get param {
  
  return $CityListParamCopyWith<$Res>(_self.param, (value) {
    return _then(_self.copyWith(param: value));
  });
}
}


/// Adds pattern-matching-related methods to [CityListState].
extension CityListStatePatterns on CityListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityListState value)  $default,){
final _that = this;
switch (_that) {
case _CityListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityListState value)?  $default,){
final _that = this;
switch (_that) {
case _CityListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CityEntity> list,  bool hasReachedMax,  bool isLoading,  Failure? failure,  CityListParam param)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityListState() when $default != null:
return $default(_that.list,_that.hasReachedMax,_that.isLoading,_that.failure,_that.param);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CityEntity> list,  bool hasReachedMax,  bool isLoading,  Failure? failure,  CityListParam param)  $default,) {final _that = this;
switch (_that) {
case _CityListState():
return $default(_that.list,_that.hasReachedMax,_that.isLoading,_that.failure,_that.param);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CityEntity> list,  bool hasReachedMax,  bool isLoading,  Failure? failure,  CityListParam param)?  $default,) {final _that = this;
switch (_that) {
case _CityListState() when $default != null:
return $default(_that.list,_that.hasReachedMax,_that.isLoading,_that.failure,_that.param);case _:
  return null;

}
}

}

/// @nodoc


class _CityListState implements CityListState {
  const _CityListState({final  List<CityEntity> list = const [], this.hasReachedMax = false, this.isLoading = false, this.failure, this.param = const CityListParam()}): _list = list;
  

 final  List<CityEntity> _list;
@override@JsonKey() List<CityEntity> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

@override@JsonKey() final  bool hasReachedMax;
@override@JsonKey() final  bool isLoading;
@override final  Failure? failure;
@override@JsonKey() final  CityListParam param;

/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityListStateCopyWith<_CityListState> get copyWith => __$CityListStateCopyWithImpl<_CityListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityListState&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),hasReachedMax,isLoading,failure,param);

@override
String toString() {
  return 'CityListState(list: $list, hasReachedMax: $hasReachedMax, isLoading: $isLoading, failure: $failure, param: $param)';
}


}

/// @nodoc
abstract mixin class _$CityListStateCopyWith<$Res> implements $CityListStateCopyWith<$Res> {
  factory _$CityListStateCopyWith(_CityListState value, $Res Function(_CityListState) _then) = __$CityListStateCopyWithImpl;
@override @useResult
$Res call({
 List<CityEntity> list, bool hasReachedMax, bool isLoading, Failure? failure, CityListParam param
});


@override $CityListParamCopyWith<$Res> get param;

}
/// @nodoc
class __$CityListStateCopyWithImpl<$Res>
    implements _$CityListStateCopyWith<$Res> {
  __$CityListStateCopyWithImpl(this._self, this._then);

  final _CityListState _self;
  final $Res Function(_CityListState) _then;

/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = null,Object? hasReachedMax = null,Object? isLoading = null,Object? failure = freezed,Object? param = null,}) {
  return _then(_CityListState(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<CityEntity>,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as CityListParam,
  ));
}

/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityListParamCopyWith<$Res> get param {
  
  return $CityListParamCopyWith<$Res>(_self.param, (value) {
    return _then(_self.copyWith(param: value));
  });
}
}

// dart format on
