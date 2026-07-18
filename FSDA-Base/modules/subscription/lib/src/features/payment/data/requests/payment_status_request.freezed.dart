// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_status_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentStatusRequest {

 String get id;
/// Create a copy of PaymentStatusRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentStatusRequestCopyWith<PaymentStatusRequest> get copyWith => _$PaymentStatusRequestCopyWithImpl<PaymentStatusRequest>(this as PaymentStatusRequest, _$identity);

  /// Serializes this PaymentStatusRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStatusRequest&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PaymentStatusRequest(id: $id)';
}


}

/// @nodoc
abstract mixin class $PaymentStatusRequestCopyWith<$Res>  {
  factory $PaymentStatusRequestCopyWith(PaymentStatusRequest value, $Res Function(PaymentStatusRequest) _then) = _$PaymentStatusRequestCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$PaymentStatusRequestCopyWithImpl<$Res>
    implements $PaymentStatusRequestCopyWith<$Res> {
  _$PaymentStatusRequestCopyWithImpl(this._self, this._then);

  final PaymentStatusRequest _self;
  final $Res Function(PaymentStatusRequest) _then;

/// Create a copy of PaymentStatusRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentStatusRequest].
extension PaymentStatusRequestPatterns on PaymentStatusRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentStatusRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentStatusRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentStatusRequest value)  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentStatusRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentStatusRequest() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id)  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusRequest():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id)?  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusRequest() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentStatusRequest extends PaymentStatusRequest {
  const _PaymentStatusRequest({required this.id}): super._();
  factory _PaymentStatusRequest.fromJson(Map<String, dynamic> json) => _$PaymentStatusRequestFromJson(json);

@override final  String id;

/// Create a copy of PaymentStatusRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentStatusRequestCopyWith<_PaymentStatusRequest> get copyWith => __$PaymentStatusRequestCopyWithImpl<_PaymentStatusRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentStatusRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentStatusRequest&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PaymentStatusRequest(id: $id)';
}


}

/// @nodoc
abstract mixin class _$PaymentStatusRequestCopyWith<$Res> implements $PaymentStatusRequestCopyWith<$Res> {
  factory _$PaymentStatusRequestCopyWith(_PaymentStatusRequest value, $Res Function(_PaymentStatusRequest) _then) = __$PaymentStatusRequestCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$PaymentStatusRequestCopyWithImpl<$Res>
    implements _$PaymentStatusRequestCopyWith<$Res> {
  __$PaymentStatusRequestCopyWithImpl(this._self, this._then);

  final _PaymentStatusRequest _self;
  final $Res Function(_PaymentStatusRequest) _then;

/// Create a copy of PaymentStatusRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_PaymentStatusRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
