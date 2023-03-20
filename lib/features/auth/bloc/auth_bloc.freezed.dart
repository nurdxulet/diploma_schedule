// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() registerConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? registerConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? registerConfirmation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterConfirmation value) registerConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_RegisterConfirmation value)? registerConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterConfirmation value)? registerConfirmation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() registerConfirmation,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? registerConfirmation,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? registerConfirmation,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterConfirmation value) registerConfirmation,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_RegisterConfirmation value)? registerConfirmation,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterConfirmation value)? registerConfirmation,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login() = _$_Login;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register();

  @override
  String toString() {
    return 'AuthEvent.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Register);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() registerConfirmation,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? registerConfirmation,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? registerConfirmation,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterConfirmation value) registerConfirmation,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_RegisterConfirmation value)? registerConfirmation,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterConfirmation value)? registerConfirmation,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register() = _$_Register;
}

/// @nodoc
abstract class _$$_RegisterConfirmationCopyWith<$Res> {
  factory _$$_RegisterConfirmationCopyWith(_$_RegisterConfirmation value,
          $Res Function(_$_RegisterConfirmation) then) =
      __$$_RegisterConfirmationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterConfirmationCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_RegisterConfirmation>
    implements _$$_RegisterConfirmationCopyWith<$Res> {
  __$$_RegisterConfirmationCopyWithImpl(_$_RegisterConfirmation _value,
      $Res Function(_$_RegisterConfirmation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterConfirmation implements _RegisterConfirmation {
  const _$_RegisterConfirmation();

  @override
  String toString() {
    return 'AuthEvent.registerConfirmation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterConfirmation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() registerConfirmation,
  }) {
    return registerConfirmation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? registerConfirmation,
  }) {
    return registerConfirmation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? registerConfirmation,
    required TResult orElse(),
  }) {
    if (registerConfirmation != null) {
      return registerConfirmation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterConfirmation value) registerConfirmation,
  }) {
    return registerConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_RegisterConfirmation value)? registerConfirmation,
  }) {
    return registerConfirmation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterConfirmation value)? registerConfirmation,
    required TResult orElse(),
  }) {
    if (registerConfirmation != null) {
      return registerConfirmation(this);
    }
    return orElse();
  }
}

abstract class _RegisterConfirmation implements AuthEvent {
  const factory _RegisterConfirmation() = _$_RegisterConfirmation;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginState,
    required TResult Function() registerState,
    required TResult Function() registerConfirmationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginState,
    TResult? Function()? registerState,
    TResult? Function()? registerConfirmationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginState,
    TResult Function()? registerState,
    TResult Function()? registerConfirmationState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_RegisterConfirmationState value)
        registerConfirmationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? loginState,
    TResult? Function(_RegisterState value)? registerState,
    TResult? Function(_RegisterConfirmationState value)?
        registerConfirmationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_RegisterConfirmationState value)?
        registerConfirmationState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState();

  @override
  String toString() {
    return 'AuthState.loginState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginState,
    required TResult Function() registerState,
    required TResult Function() registerConfirmationState,
  }) {
    return loginState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginState,
    TResult? Function()? registerState,
    TResult? Function()? registerConfirmationState,
  }) {
    return loginState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginState,
    TResult Function()? registerState,
    TResult Function()? registerConfirmationState,
    required TResult orElse(),
  }) {
    if (loginState != null) {
      return loginState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_RegisterConfirmationState value)
        registerConfirmationState,
  }) {
    return loginState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? loginState,
    TResult? Function(_RegisterState value)? registerState,
    TResult? Function(_RegisterConfirmationState value)?
        registerConfirmationState,
  }) {
    return loginState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_RegisterConfirmationState value)?
        registerConfirmationState,
    required TResult orElse(),
  }) {
    if (loginState != null) {
      return loginState(this);
    }
    return orElse();
  }
}

abstract class _LoginState implements AuthState {
  const factory _LoginState() = _$_LoginState;
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState();

  @override
  String toString() {
    return 'AuthState.registerState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginState,
    required TResult Function() registerState,
    required TResult Function() registerConfirmationState,
  }) {
    return registerState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginState,
    TResult? Function()? registerState,
    TResult? Function()? registerConfirmationState,
  }) {
    return registerState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginState,
    TResult Function()? registerState,
    TResult Function()? registerConfirmationState,
    required TResult orElse(),
  }) {
    if (registerState != null) {
      return registerState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_RegisterConfirmationState value)
        registerConfirmationState,
  }) {
    return registerState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? loginState,
    TResult? Function(_RegisterState value)? registerState,
    TResult? Function(_RegisterConfirmationState value)?
        registerConfirmationState,
  }) {
    return registerState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_RegisterConfirmationState value)?
        registerConfirmationState,
    required TResult orElse(),
  }) {
    if (registerState != null) {
      return registerState(this);
    }
    return orElse();
  }
}

abstract class _RegisterState implements AuthState {
  const factory _RegisterState() = _$_RegisterState;
}

/// @nodoc
abstract class _$$_RegisterConfirmationStateCopyWith<$Res> {
  factory _$$_RegisterConfirmationStateCopyWith(
          _$_RegisterConfirmationState value,
          $Res Function(_$_RegisterConfirmationState) then) =
      __$$_RegisterConfirmationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterConfirmationStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_RegisterConfirmationState>
    implements _$$_RegisterConfirmationStateCopyWith<$Res> {
  __$$_RegisterConfirmationStateCopyWithImpl(
      _$_RegisterConfirmationState _value,
      $Res Function(_$_RegisterConfirmationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterConfirmationState implements _RegisterConfirmationState {
  const _$_RegisterConfirmationState();

  @override
  String toString() {
    return 'AuthState.registerConfirmationState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterConfirmationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginState,
    required TResult Function() registerState,
    required TResult Function() registerConfirmationState,
  }) {
    return registerConfirmationState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginState,
    TResult? Function()? registerState,
    TResult? Function()? registerConfirmationState,
  }) {
    return registerConfirmationState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginState,
    TResult Function()? registerState,
    TResult Function()? registerConfirmationState,
    required TResult orElse(),
  }) {
    if (registerConfirmationState != null) {
      return registerConfirmationState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_RegisterConfirmationState value)
        registerConfirmationState,
  }) {
    return registerConfirmationState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? loginState,
    TResult? Function(_RegisterState value)? registerState,
    TResult? Function(_RegisterConfirmationState value)?
        registerConfirmationState,
  }) {
    return registerConfirmationState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_RegisterConfirmationState value)?
        registerConfirmationState,
    required TResult orElse(),
  }) {
    if (registerConfirmationState != null) {
      return registerConfirmationState(this);
    }
    return orElse();
  }
}

abstract class _RegisterConfirmationState implements AuthState {
  const factory _RegisterConfirmationState() = _$_RegisterConfirmationState;
}
