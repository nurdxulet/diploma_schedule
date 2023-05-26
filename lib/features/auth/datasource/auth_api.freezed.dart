// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthApi {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) login,
    required TResult Function(String email) sendCode,
    required TResult Function(String email, String code) checkCode,
    required TResult Function(String email, String password) resetPassword,
    required TResult Function() profile,
    required TResult Function() logOut,
    required TResult Function(String email, String password, String phone,
            String birthday, String name)
        registration,
    required TResult Function(FormData formData) editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? login,
    TResult? Function(String email)? sendCode,
    TResult? Function(String email, String code)? checkCode,
    TResult? Function(String email, String password)? resetPassword,
    TResult? Function()? profile,
    TResult? Function()? logOut,
    TResult? Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult? Function(FormData formData)? editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? login,
    TResult Function(String email)? sendCode,
    TResult Function(String email, String code)? checkCode,
    TResult Function(String email, String password)? resetPassword,
    TResult Function()? profile,
    TResult Function()? logOut,
    TResult Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult Function(FormData formData)? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_CheckCode value) checkCode,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Profile value) profile,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Registration value) registration,
    required TResult Function(_EditProfile value) editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_CheckCode value)? checkCode,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Profile value)? profile,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_EditProfile value)? editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_CheckCode value)? checkCode,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Profile value)? profile,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Registration value)? registration,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthApiCopyWith<$Res> {
  factory $AuthApiCopyWith(AuthApi value, $Res Function(AuthApi) then) =
      _$AuthApiCopyWithImpl<$Res, AuthApi>;
}

/// @nodoc
class _$AuthApiCopyWithImpl<$Res, $Val extends AuthApi>
    implements $AuthApiCopyWith<$Res> {
  _$AuthApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String universityCode});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res> extends _$AuthApiCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
  }) {
    return _then(_$_Login(
      universityCode: null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Login extends _Login {
  const _$_Login({required this.universityCode}) : super._();

  @override
  final String universityCode;

  @override
  String toString() {
    return 'AuthApi.login(universityCode: $universityCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.universityCode, universityCode) ||
                other.universityCode == universityCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, universityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) login,
    required TResult Function(String email) sendCode,
    required TResult Function(String email, String code) checkCode,
    required TResult Function(String email, String password) resetPassword,
    required TResult Function() profile,
    required TResult Function() logOut,
    required TResult Function(String email, String password, String phone,
            String birthday, String name)
        registration,
    required TResult Function(FormData formData) editProfile,
  }) {
    return login(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? login,
    TResult? Function(String email)? sendCode,
    TResult? Function(String email, String code)? checkCode,
    TResult? Function(String email, String password)? resetPassword,
    TResult? Function()? profile,
    TResult? Function()? logOut,
    TResult? Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult? Function(FormData formData)? editProfile,
  }) {
    return login?.call(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? login,
    TResult Function(String email)? sendCode,
    TResult Function(String email, String code)? checkCode,
    TResult Function(String email, String password)? resetPassword,
    TResult Function()? profile,
    TResult Function()? logOut,
    TResult Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult Function(FormData formData)? editProfile,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(universityCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_CheckCode value) checkCode,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Profile value) profile,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Registration value) registration,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_CheckCode value)? checkCode,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Profile value)? profile,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_CheckCode value)? checkCode,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Profile value)? profile,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Registration value)? registration,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login extends AuthApi {
  const factory _Login({required final String universityCode}) = _$_Login;
  const _Login._() : super._();

  String get universityCode;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendCodeCopyWith<$Res> {
  factory _$$_SendCodeCopyWith(
          _$_SendCode value, $Res Function(_$_SendCode) then) =
      __$$_SendCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_SendCodeCopyWithImpl<$Res>
    extends _$AuthApiCopyWithImpl<$Res, _$_SendCode>
    implements _$$_SendCodeCopyWith<$Res> {
  __$$_SendCodeCopyWithImpl(
      _$_SendCode _value, $Res Function(_$_SendCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_SendCode(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendCode extends _SendCode {
  const _$_SendCode({required this.email}) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'AuthApi.sendCode(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendCode &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendCodeCopyWith<_$_SendCode> get copyWith =>
      __$$_SendCodeCopyWithImpl<_$_SendCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) login,
    required TResult Function(String email) sendCode,
    required TResult Function(String email, String code) checkCode,
    required TResult Function(String email, String password) resetPassword,
    required TResult Function() profile,
    required TResult Function() logOut,
    required TResult Function(String email, String password, String phone,
            String birthday, String name)
        registration,
    required TResult Function(FormData formData) editProfile,
  }) {
    return sendCode(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? login,
    TResult? Function(String email)? sendCode,
    TResult? Function(String email, String code)? checkCode,
    TResult? Function(String email, String password)? resetPassword,
    TResult? Function()? profile,
    TResult? Function()? logOut,
    TResult? Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult? Function(FormData formData)? editProfile,
  }) {
    return sendCode?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? login,
    TResult Function(String email)? sendCode,
    TResult Function(String email, String code)? checkCode,
    TResult Function(String email, String password)? resetPassword,
    TResult Function()? profile,
    TResult Function()? logOut,
    TResult Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult Function(FormData formData)? editProfile,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_CheckCode value) checkCode,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Profile value) profile,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Registration value) registration,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_CheckCode value)? checkCode,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Profile value)? profile,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return sendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_CheckCode value)? checkCode,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Profile value)? profile,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Registration value)? registration,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class _SendCode extends AuthApi {
  const factory _SendCode({required final String email}) = _$_SendCode;
  const _SendCode._() : super._();

  String get email;
  @JsonKey(ignore: true)
  _$$_SendCodeCopyWith<_$_SendCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckCodeCopyWith<$Res> {
  factory _$$_CheckCodeCopyWith(
          _$_CheckCode value, $Res Function(_$_CheckCode) then) =
      __$$_CheckCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$_CheckCodeCopyWithImpl<$Res>
    extends _$AuthApiCopyWithImpl<$Res, _$_CheckCode>
    implements _$$_CheckCodeCopyWith<$Res> {
  __$$_CheckCodeCopyWithImpl(
      _$_CheckCode _value, $Res Function(_$_CheckCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$_CheckCode(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckCode extends _CheckCode {
  const _$_CheckCode({required this.email, required this.code}) : super._();

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthApi.checkCode(email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckCode &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckCodeCopyWith<_$_CheckCode> get copyWith =>
      __$$_CheckCodeCopyWithImpl<_$_CheckCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) login,
    required TResult Function(String email) sendCode,
    required TResult Function(String email, String code) checkCode,
    required TResult Function(String email, String password) resetPassword,
    required TResult Function() profile,
    required TResult Function() logOut,
    required TResult Function(String email, String password, String phone,
            String birthday, String name)
        registration,
    required TResult Function(FormData formData) editProfile,
  }) {
    return checkCode(email, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? login,
    TResult? Function(String email)? sendCode,
    TResult? Function(String email, String code)? checkCode,
    TResult? Function(String email, String password)? resetPassword,
    TResult? Function()? profile,
    TResult? Function()? logOut,
    TResult? Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult? Function(FormData formData)? editProfile,
  }) {
    return checkCode?.call(email, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? login,
    TResult Function(String email)? sendCode,
    TResult Function(String email, String code)? checkCode,
    TResult Function(String email, String password)? resetPassword,
    TResult Function()? profile,
    TResult Function()? logOut,
    TResult Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult Function(FormData formData)? editProfile,
    required TResult orElse(),
  }) {
    if (checkCode != null) {
      return checkCode(email, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_CheckCode value) checkCode,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Profile value) profile,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Registration value) registration,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return checkCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_CheckCode value)? checkCode,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Profile value)? profile,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return checkCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_CheckCode value)? checkCode,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Profile value)? profile,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Registration value)? registration,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (checkCode != null) {
      return checkCode(this);
    }
    return orElse();
  }
}

abstract class _CheckCode extends AuthApi {
  const factory _CheckCode(
      {required final String email, required final String code}) = _$_CheckCode;
  const _CheckCode._() : super._();

  String get email;
  String get code;
  @JsonKey(ignore: true)
  _$$_CheckCodeCopyWith<_$_CheckCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPasswordCopyWith<$Res> {
  factory _$$_ResetPasswordCopyWith(
          _$_ResetPassword value, $Res Function(_$_ResetPassword) then) =
      __$$_ResetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_ResetPasswordCopyWithImpl<$Res>
    extends _$AuthApiCopyWithImpl<$Res, _$_ResetPassword>
    implements _$$_ResetPasswordCopyWith<$Res> {
  __$$_ResetPasswordCopyWithImpl(
      _$_ResetPassword _value, $Res Function(_$_ResetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_ResetPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPassword extends _ResetPassword {
  const _$_ResetPassword({required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthApi.resetPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordCopyWith<_$_ResetPassword> get copyWith =>
      __$$_ResetPasswordCopyWithImpl<_$_ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) login,
    required TResult Function(String email) sendCode,
    required TResult Function(String email, String code) checkCode,
    required TResult Function(String email, String password) resetPassword,
    required TResult Function() profile,
    required TResult Function() logOut,
    required TResult Function(String email, String password, String phone,
            String birthday, String name)
        registration,
    required TResult Function(FormData formData) editProfile,
  }) {
    return resetPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? login,
    TResult? Function(String email)? sendCode,
    TResult? Function(String email, String code)? checkCode,
    TResult? Function(String email, String password)? resetPassword,
    TResult? Function()? profile,
    TResult? Function()? logOut,
    TResult? Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult? Function(FormData formData)? editProfile,
  }) {
    return resetPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? login,
    TResult Function(String email)? sendCode,
    TResult Function(String email, String code)? checkCode,
    TResult Function(String email, String password)? resetPassword,
    TResult Function()? profile,
    TResult Function()? logOut,
    TResult Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult Function(FormData formData)? editProfile,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_CheckCode value) checkCode,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Profile value) profile,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Registration value) registration,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_CheckCode value)? checkCode,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Profile value)? profile,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_CheckCode value)? checkCode,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Profile value)? profile,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Registration value)? registration,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword extends AuthApi {
  const factory _ResetPassword(
      {required final String email,
      required final String password}) = _$_ResetPassword;
  const _ResetPassword._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_ResetPasswordCopyWith<_$_ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res>
    extends _$AuthApiCopyWithImpl<$Res, _$_Profile>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Profile extends _Profile {
  const _$_Profile() : super._();

  @override
  String toString() {
    return 'AuthApi.profile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Profile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) login,
    required TResult Function(String email) sendCode,
    required TResult Function(String email, String code) checkCode,
    required TResult Function(String email, String password) resetPassword,
    required TResult Function() profile,
    required TResult Function() logOut,
    required TResult Function(String email, String password, String phone,
            String birthday, String name)
        registration,
    required TResult Function(FormData formData) editProfile,
  }) {
    return profile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? login,
    TResult? Function(String email)? sendCode,
    TResult? Function(String email, String code)? checkCode,
    TResult? Function(String email, String password)? resetPassword,
    TResult? Function()? profile,
    TResult? Function()? logOut,
    TResult? Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult? Function(FormData formData)? editProfile,
  }) {
    return profile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? login,
    TResult Function(String email)? sendCode,
    TResult Function(String email, String code)? checkCode,
    TResult Function(String email, String password)? resetPassword,
    TResult Function()? profile,
    TResult Function()? logOut,
    TResult Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult Function(FormData formData)? editProfile,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_CheckCode value) checkCode,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Profile value) profile,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Registration value) registration,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return profile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_CheckCode value)? checkCode,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Profile value)? profile,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return profile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_CheckCode value)? checkCode,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Profile value)? profile,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Registration value)? registration,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(this);
    }
    return orElse();
  }
}

abstract class _Profile extends AuthApi {
  const factory _Profile() = _$_Profile;
  const _Profile._() : super._();
}

/// @nodoc
abstract class _$$_LogOutCopyWith<$Res> {
  factory _$$_LogOutCopyWith(_$_LogOut value, $Res Function(_$_LogOut) then) =
      __$$_LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogOutCopyWithImpl<$Res>
    extends _$AuthApiCopyWithImpl<$Res, _$_LogOut>
    implements _$$_LogOutCopyWith<$Res> {
  __$$_LogOutCopyWithImpl(_$_LogOut _value, $Res Function(_$_LogOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogOut extends _LogOut {
  const _$_LogOut() : super._();

  @override
  String toString() {
    return 'AuthApi.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) login,
    required TResult Function(String email) sendCode,
    required TResult Function(String email, String code) checkCode,
    required TResult Function(String email, String password) resetPassword,
    required TResult Function() profile,
    required TResult Function() logOut,
    required TResult Function(String email, String password, String phone,
            String birthday, String name)
        registration,
    required TResult Function(FormData formData) editProfile,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? login,
    TResult? Function(String email)? sendCode,
    TResult? Function(String email, String code)? checkCode,
    TResult? Function(String email, String password)? resetPassword,
    TResult? Function()? profile,
    TResult? Function()? logOut,
    TResult? Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult? Function(FormData formData)? editProfile,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? login,
    TResult Function(String email)? sendCode,
    TResult Function(String email, String code)? checkCode,
    TResult Function(String email, String password)? resetPassword,
    TResult Function()? profile,
    TResult Function()? logOut,
    TResult Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult Function(FormData formData)? editProfile,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_CheckCode value) checkCode,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Profile value) profile,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Registration value) registration,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_CheckCode value)? checkCode,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Profile value)? profile,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_CheckCode value)? checkCode,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Profile value)? profile,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Registration value)? registration,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut extends AuthApi {
  const factory _LogOut() = _$_LogOut;
  const _LogOut._() : super._();
}

/// @nodoc
abstract class _$$_RegistrationCopyWith<$Res> {
  factory _$$_RegistrationCopyWith(
          _$_Registration value, $Res Function(_$_Registration) then) =
      __$$_RegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      String phone,
      String birthday,
      String name});
}

/// @nodoc
class __$$_RegistrationCopyWithImpl<$Res>
    extends _$AuthApiCopyWithImpl<$Res, _$_Registration>
    implements _$$_RegistrationCopyWith<$Res> {
  __$$_RegistrationCopyWithImpl(
      _$_Registration _value, $Res Function(_$_Registration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? phone = null,
    Object? birthday = null,
    Object? name = null,
  }) {
    return _then(_$_Registration(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Registration extends _Registration {
  const _$_Registration(
      {required this.email,
      required this.password,
      required this.phone,
      required this.birthday,
      required this.name})
      : super._();

  @override
  final String email;
  @override
  final String password;
  @override
  final String phone;
  @override
  final String birthday;
  @override
  final String name;

  @override
  String toString() {
    return 'AuthApi.registration(email: $email, password: $password, phone: $phone, birthday: $birthday, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Registration &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, phone, birthday, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationCopyWith<_$_Registration> get copyWith =>
      __$$_RegistrationCopyWithImpl<_$_Registration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) login,
    required TResult Function(String email) sendCode,
    required TResult Function(String email, String code) checkCode,
    required TResult Function(String email, String password) resetPassword,
    required TResult Function() profile,
    required TResult Function() logOut,
    required TResult Function(String email, String password, String phone,
            String birthday, String name)
        registration,
    required TResult Function(FormData formData) editProfile,
  }) {
    return registration(email, password, phone, birthday, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? login,
    TResult? Function(String email)? sendCode,
    TResult? Function(String email, String code)? checkCode,
    TResult? Function(String email, String password)? resetPassword,
    TResult? Function()? profile,
    TResult? Function()? logOut,
    TResult? Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult? Function(FormData formData)? editProfile,
  }) {
    return registration?.call(email, password, phone, birthday, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? login,
    TResult Function(String email)? sendCode,
    TResult Function(String email, String code)? checkCode,
    TResult Function(String email, String password)? resetPassword,
    TResult Function()? profile,
    TResult Function()? logOut,
    TResult Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult Function(FormData formData)? editProfile,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(email, password, phone, birthday, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_CheckCode value) checkCode,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Profile value) profile,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Registration value) registration,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return registration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_CheckCode value)? checkCode,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Profile value)? profile,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return registration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_CheckCode value)? checkCode,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Profile value)? profile,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Registration value)? registration,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(this);
    }
    return orElse();
  }
}

abstract class _Registration extends AuthApi {
  const factory _Registration(
      {required final String email,
      required final String password,
      required final String phone,
      required final String birthday,
      required final String name}) = _$_Registration;
  const _Registration._() : super._();

  String get email;
  String get password;
  String get phone;
  String get birthday;
  String get name;
  @JsonKey(ignore: true)
  _$$_RegistrationCopyWith<_$_Registration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditProfileCopyWith<$Res> {
  factory _$$_EditProfileCopyWith(
          _$_EditProfile value, $Res Function(_$_EditProfile) then) =
      __$$_EditProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData formData});
}

/// @nodoc
class __$$_EditProfileCopyWithImpl<$Res>
    extends _$AuthApiCopyWithImpl<$Res, _$_EditProfile>
    implements _$$_EditProfileCopyWith<$Res> {
  __$$_EditProfileCopyWithImpl(
      _$_EditProfile _value, $Res Function(_$_EditProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
  }) {
    return _then(_$_EditProfile(
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$_EditProfile extends _EditProfile {
  const _$_EditProfile({required this.formData}) : super._();

  @override
  final FormData formData;

  @override
  String toString() {
    return 'AuthApi.editProfile(formData: $formData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfile &&
            (identical(other.formData, formData) ||
                other.formData == formData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditProfileCopyWith<_$_EditProfile> get copyWith =>
      __$$_EditProfileCopyWithImpl<_$_EditProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) login,
    required TResult Function(String email) sendCode,
    required TResult Function(String email, String code) checkCode,
    required TResult Function(String email, String password) resetPassword,
    required TResult Function() profile,
    required TResult Function() logOut,
    required TResult Function(String email, String password, String phone,
            String birthday, String name)
        registration,
    required TResult Function(FormData formData) editProfile,
  }) {
    return editProfile(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? login,
    TResult? Function(String email)? sendCode,
    TResult? Function(String email, String code)? checkCode,
    TResult? Function(String email, String password)? resetPassword,
    TResult? Function()? profile,
    TResult? Function()? logOut,
    TResult? Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult? Function(FormData formData)? editProfile,
  }) {
    return editProfile?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? login,
    TResult Function(String email)? sendCode,
    TResult Function(String email, String code)? checkCode,
    TResult Function(String email, String password)? resetPassword,
    TResult Function()? profile,
    TResult Function()? logOut,
    TResult Function(String email, String password, String phone,
            String birthday, String name)?
        registration,
    TResult Function(FormData formData)? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_CheckCode value) checkCode,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Profile value) profile,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Registration value) registration,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return editProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_CheckCode value)? checkCode,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Profile value)? profile,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Registration value)? registration,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return editProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_CheckCode value)? checkCode,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Profile value)? profile,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Registration value)? registration,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(this);
    }
    return orElse();
  }
}

abstract class _EditProfile extends AuthApi {
  const factory _EditProfile({required final FormData formData}) =
      _$_EditProfile;
  const _EditProfile._() : super._();

  FormData get formData;
  @JsonKey(ignore: true)
  _$$_EditProfileCopyWith<_$_EditProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
