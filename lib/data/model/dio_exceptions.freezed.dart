// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dio_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DioExceptionTearOff {
  const _$DioExceptionTearOff();

// ignore: unused_element
  _DioException call({String message}) {
    return _DioException(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DioException = _$DioExceptionTearOff();

/// @nodoc
mixin _$DioException {
  String get message;

  @JsonKey(ignore: true)
  $DioExceptionCopyWith<DioException> get copyWith;
}

/// @nodoc
abstract class $DioExceptionCopyWith<$Res> {
  factory $DioExceptionCopyWith(
          DioException value, $Res Function(DioException) then) =
      _$DioExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$DioExceptionCopyWithImpl<$Res> implements $DioExceptionCopyWith<$Res> {
  _$DioExceptionCopyWithImpl(this._value, this._then);

  final DioException _value;
  // ignore: unused_field
  final $Res Function(DioException) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$DioExceptionCopyWith<$Res>
    implements $DioExceptionCopyWith<$Res> {
  factory _$DioExceptionCopyWith(
          _DioException value, $Res Function(_DioException) then) =
      __$DioExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$DioExceptionCopyWithImpl<$Res> extends _$DioExceptionCopyWithImpl<$Res>
    implements _$DioExceptionCopyWith<$Res> {
  __$DioExceptionCopyWithImpl(
      _DioException _value, $Res Function(_DioException) _then)
      : super(_value, (v) => _then(v as _DioException));

  @override
  _DioException get _value => super._value as _DioException;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_DioException(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_DioException implements _DioException {
  _$_DioException({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DioException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DioException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$DioExceptionCopyWith<_DioException> get copyWith =>
      __$DioExceptionCopyWithImpl<_DioException>(this, _$identity);
}

abstract class _DioException implements DioException {
  factory _DioException({String message}) = _$_DioException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$DioExceptionCopyWith<_DioException> get copyWith;
}
