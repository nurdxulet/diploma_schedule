// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPayload _$UserPayloadFromJson(Map<String, dynamic> json) {
  return _UserPayload.fromJson(json);
}

/// @nodoc
mixin _$UserPayload {
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: "old_password")
  String? get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get birthday => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPayloadCopyWith<UserPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPayloadCopyWith<$Res> {
  factory $UserPayloadCopyWith(
          UserPayload value, $Res Function(UserPayload) then) =
      _$UserPayloadCopyWithImpl<$Res, UserPayload>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? password,
      @JsonKey(includeIfNull: false, name: "old_password") String? oldPassword,
      @JsonKey(includeIfNull: false) String? phone,
      @JsonKey(includeIfNull: false) String? birthday,
      @JsonKey(includeIfNull: false) String? name});
}

/// @nodoc
class _$UserPayloadCopyWithImpl<$Res, $Val extends UserPayload>
    implements $UserPayloadCopyWith<$Res> {
  _$UserPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPayloadCopyWith<$Res>
    implements $UserPayloadCopyWith<$Res> {
  factory _$$_UserPayloadCopyWith(
          _$_UserPayload value, $Res Function(_$_UserPayload) then) =
      __$$_UserPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? password,
      @JsonKey(includeIfNull: false, name: "old_password") String? oldPassword,
      @JsonKey(includeIfNull: false) String? phone,
      @JsonKey(includeIfNull: false) String? birthday,
      @JsonKey(includeIfNull: false) String? name});
}

/// @nodoc
class __$$_UserPayloadCopyWithImpl<$Res>
    extends _$UserPayloadCopyWithImpl<$Res, _$_UserPayload>
    implements _$$_UserPayloadCopyWith<$Res> {
  __$$_UserPayloadCopyWithImpl(
      _$_UserPayload _value, $Res Function(_$_UserPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_UserPayload(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPayload implements _UserPayload {
  const _$_UserPayload(
      {@JsonKey(includeIfNull: false) this.email,
      @JsonKey(includeIfNull: false) this.password,
      @JsonKey(includeIfNull: false, name: "old_password") this.oldPassword,
      @JsonKey(includeIfNull: false) this.phone,
      @JsonKey(includeIfNull: false) this.birthday,
      @JsonKey(includeIfNull: false) this.name});

  factory _$_UserPayload.fromJson(Map<String, dynamic> json) =>
      _$$_UserPayloadFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? email;
  @override
  @JsonKey(includeIfNull: false)
  final String? password;
  @override
  @JsonKey(includeIfNull: false, name: "old_password")
  final String? oldPassword;
  @override
  @JsonKey(includeIfNull: false)
  final String? phone;
  @override
  @JsonKey(includeIfNull: false)
  final String? birthday;
  @override
  @JsonKey(includeIfNull: false)
  final String? name;

  @override
  String toString() {
    return 'UserPayload(email: $email, password: $password, oldPassword: $oldPassword, phone: $phone, birthday: $birthday, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPayload &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, oldPassword, phone, birthday, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPayloadCopyWith<_$_UserPayload> get copyWith =>
      __$$_UserPayloadCopyWithImpl<_$_UserPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPayloadToJson(
      this,
    );
  }
}

abstract class _UserPayload implements UserPayload {
  const factory _UserPayload(
      {@JsonKey(includeIfNull: false)
          final String? email,
      @JsonKey(includeIfNull: false)
          final String? password,
      @JsonKey(includeIfNull: false, name: "old_password")
          final String? oldPassword,
      @JsonKey(includeIfNull: false)
          final String? phone,
      @JsonKey(includeIfNull: false)
          final String? birthday,
      @JsonKey(includeIfNull: false)
          final String? name}) = _$_UserPayload;

  factory _UserPayload.fromJson(Map<String, dynamic> json) =
      _$_UserPayload.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get email;
  @override
  @JsonKey(includeIfNull: false)
  String? get password;
  @override
  @JsonKey(includeIfNull: false, name: "old_password")
  String? get oldPassword;
  @override
  @JsonKey(includeIfNull: false)
  String? get phone;
  @override
  @JsonKey(includeIfNull: false)
  String? get birthday;
  @override
  @JsonKey(includeIfNull: false)
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_UserPayloadCopyWith<_$_UserPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
