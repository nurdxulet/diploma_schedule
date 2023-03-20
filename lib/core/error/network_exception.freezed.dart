// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) request,
    required TResult Function(String? error) type,
    required TResult Function(String message) connectivity,
    required TResult Function(String message) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? request,
    TResult? Function(String? error)? type,
    TResult? Function(String message)? connectivity,
    TResult? Function(String message)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? type,
    TResult Function(String message)? connectivity,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) request,
    required TResult Function(_DecodingError value) type,
    required TResult Function(_Connectivity value) connectivity,
    required TResult Function(_TimeOut value) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseError value)? request,
    TResult? Function(_DecodingError value)? type,
    TResult? Function(_Connectivity value)? connectivity,
    TResult? Function(_TimeOut value)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_Connectivity value)? connectivity,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res, NetworkException>;
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res, $Val extends NetworkException>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ResponseErrorCopyWith<$Res> {
  factory _$$_ResponseErrorCopyWith(
          _$_ResponseError value, $Res Function(_$_ResponseError) then) =
      __$$_ResponseErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({DioError error});
}

/// @nodoc
class __$$_ResponseErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$_ResponseError>
    implements _$$_ResponseErrorCopyWith<$Res> {
  __$$_ResponseErrorCopyWithImpl(
      _$_ResponseError _value, $Res Function(_$_ResponseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ResponseError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$_ResponseError extends _ResponseError {
  const _$_ResponseError({required this.error}) : super._();

  @override
  final DioError error;

  @override
  String toString() {
    return 'NetworkException.request(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      __$$_ResponseErrorCopyWithImpl<_$_ResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) request,
    required TResult Function(String? error) type,
    required TResult Function(String message) connectivity,
    required TResult Function(String message) timeOut,
  }) {
    return request(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? request,
    TResult? Function(String? error)? type,
    TResult? Function(String message)? connectivity,
    TResult? Function(String message)? timeOut,
  }) {
    return request?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? type,
    TResult Function(String message)? connectivity,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) request,
    required TResult Function(_DecodingError value) type,
    required TResult Function(_Connectivity value) connectivity,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseError value)? request,
    TResult? Function(_DecodingError value)? type,
    TResult? Function(_Connectivity value)? connectivity,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_Connectivity value)? connectivity,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _ResponseError extends NetworkException {
  const factory _ResponseError({required final DioError error}) =
      _$_ResponseError;
  const _ResponseError._() : super._();

  DioError get error;
  @JsonKey(ignore: true)
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecodingErrorCopyWith<$Res> {
  factory _$$_DecodingErrorCopyWith(
          _$_DecodingError value, $Res Function(_$_DecodingError) then) =
      __$$_DecodingErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_DecodingErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$_DecodingError>
    implements _$$_DecodingErrorCopyWith<$Res> {
  __$$_DecodingErrorCopyWithImpl(
      _$_DecodingError _value, $Res Function(_$_DecodingError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_DecodingError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DecodingError extends _DecodingError {
  const _$_DecodingError({this.error}) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'NetworkException.type(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecodingError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecodingErrorCopyWith<_$_DecodingError> get copyWith =>
      __$$_DecodingErrorCopyWithImpl<_$_DecodingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) request,
    required TResult Function(String? error) type,
    required TResult Function(String message) connectivity,
    required TResult Function(String message) timeOut,
  }) {
    return type(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? request,
    TResult? Function(String? error)? type,
    TResult? Function(String message)? connectivity,
    TResult? Function(String message)? timeOut,
  }) {
    return type?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? type,
    TResult Function(String message)? connectivity,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) request,
    required TResult Function(_DecodingError value) type,
    required TResult Function(_Connectivity value) connectivity,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return type(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseError value)? request,
    TResult? Function(_DecodingError value)? type,
    TResult? Function(_Connectivity value)? connectivity,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return type?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_Connectivity value)? connectivity,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(this);
    }
    return orElse();
  }
}

abstract class _DecodingError extends NetworkException {
  const factory _DecodingError({final String? error}) = _$_DecodingError;
  const _DecodingError._() : super._();

  String? get error;
  @JsonKey(ignore: true)
  _$$_DecodingErrorCopyWith<_$_DecodingError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConnectivityCopyWith<$Res> {
  factory _$$_ConnectivityCopyWith(
          _$_Connectivity value, $Res Function(_$_Connectivity) then) =
      __$$_ConnectivityCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ConnectivityCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$_Connectivity>
    implements _$$_ConnectivityCopyWith<$Res> {
  __$$_ConnectivityCopyWithImpl(
      _$_Connectivity _value, $Res Function(_$_Connectivity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Connectivity(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Connectivity extends _Connectivity {
  const _$_Connectivity({this.message = 'Нет доступа к интернету!'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'NetworkException.connectivity(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Connectivity &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectivityCopyWith<_$_Connectivity> get copyWith =>
      __$$_ConnectivityCopyWithImpl<_$_Connectivity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) request,
    required TResult Function(String? error) type,
    required TResult Function(String message) connectivity,
    required TResult Function(String message) timeOut,
  }) {
    return connectivity(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? request,
    TResult? Function(String? error)? type,
    TResult? Function(String message)? connectivity,
    TResult? Function(String message)? timeOut,
  }) {
    return connectivity?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? type,
    TResult Function(String message)? connectivity,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (connectivity != null) {
      return connectivity(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) request,
    required TResult Function(_DecodingError value) type,
    required TResult Function(_Connectivity value) connectivity,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return connectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseError value)? request,
    TResult? Function(_DecodingError value)? type,
    TResult? Function(_Connectivity value)? connectivity,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return connectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_Connectivity value)? connectivity,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (connectivity != null) {
      return connectivity(this);
    }
    return orElse();
  }
}

abstract class _Connectivity extends NetworkException {
  const factory _Connectivity({final String message}) = _$_Connectivity;
  const _Connectivity._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ConnectivityCopyWith<_$_Connectivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimeOutCopyWith<$Res> {
  factory _$$_TimeOutCopyWith(
          _$_TimeOut value, $Res Function(_$_TimeOut) then) =
      __$$_TimeOutCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_TimeOutCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$_TimeOut>
    implements _$$_TimeOutCopyWith<$Res> {
  __$$_TimeOutCopyWithImpl(_$_TimeOut _value, $Res Function(_$_TimeOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_TimeOut(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TimeOut extends _TimeOut {
  const _$_TimeOut({this.message = 'Время запроса истекло!'}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'NetworkException.timeOut(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeOut &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeOutCopyWith<_$_TimeOut> get copyWith =>
      __$$_TimeOutCopyWithImpl<_$_TimeOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) request,
    required TResult Function(String? error) type,
    required TResult Function(String message) connectivity,
    required TResult Function(String message) timeOut,
  }) {
    return timeOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? request,
    TResult? Function(String? error)? type,
    TResult? Function(String message)? connectivity,
    TResult? Function(String message)? timeOut,
  }) {
    return timeOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? type,
    TResult Function(String message)? connectivity,
    TResult Function(String message)? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) request,
    required TResult Function(_DecodingError value) type,
    required TResult Function(_Connectivity value) connectivity,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseError value)? request,
    TResult? Function(_DecodingError value)? type,
    TResult? Function(_Connectivity value)? connectivity,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_Connectivity value)? connectivity,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class _TimeOut extends NetworkException {
  const factory _TimeOut({final String message}) = _$_TimeOut;
  const _TimeOut._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_TimeOutCopyWith<_$_TimeOut> get copyWith =>
      throw _privateConstructorUsedError;
}
