// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_id')
  int? get regionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  TokenDTO? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'created_at') String? createdAt,
      TokenDTO? token});

  $TokenDTOCopyWith<$Res>? get token;
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? regionId = freezed,
    Object? cityId = freezed,
    Object? createdAt = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      regionId: freezed == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenDTOCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $TokenDTOCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$_UserDTOCopyWith(
          _$_UserDTO value, $Res Function(_$_UserDTO) then) =
      __$$_UserDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'created_at') String? createdAt,
      TokenDTO? token});

  @override
  $TokenDTOCopyWith<$Res>? get token;
}

/// @nodoc
class __$$_UserDTOCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$_UserDTO>
    implements _$$_UserDTOCopyWith<$Res> {
  __$$_UserDTOCopyWithImpl(_$_UserDTO _value, $Res Function(_$_UserDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? regionId = freezed,
    Object? cityId = freezed,
    Object? createdAt = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_UserDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      regionId: freezed == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDTO implements _UserDTO {
  const _$_UserDTO(
      {required this.id,
      this.name,
      this.email,
      this.phone,
      @JsonKey(name: 'region_id') this.regionId,
      @JsonKey(name: 'city_id') this.cityId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.token});

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'region_id')
  final int? regionId;
  @override
  @JsonKey(name: 'city_id')
  final int? cityId;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final TokenDTO? token;

  @override
  String toString() {
    return 'UserDTO(id: $id, name: $name, email: $email, phone: $phone, regionId: $regionId, cityId: $cityId, createdAt: $createdAt, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, email, phone, regionId, cityId, createdAt, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      __$$_UserDTOCopyWithImpl<_$_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(
      this,
    );
  }
}

abstract class _UserDTO implements UserDTO {
  const factory _UserDTO(
      {required final int id,
      final String? name,
      final String? email,
      final String? phone,
      @JsonKey(name: 'region_id') final int? regionId,
      @JsonKey(name: 'city_id') final int? cityId,
      @JsonKey(name: 'created_at') final String? createdAt,
      final TokenDTO? token}) = _$_UserDTO;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'region_id')
  int? get regionId;
  @override
  @JsonKey(name: 'city_id')
  int? get cityId;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  TokenDTO? get token;
  @override
  @JsonKey(ignore: true)
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenDTO _$TokenDTOFromJson(Map<String, dynamic> json) {
  return _TokenDTO.fromJson(json);
}

/// @nodoc
mixin _$TokenDTO {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDTOCopyWith<TokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDTOCopyWith<$Res> {
  factory $TokenDTOCopyWith(TokenDTO value, $Res Function(TokenDTO) then) =
      _$TokenDTOCopyWithImpl<$Res, TokenDTO>;
  @useResult
  $Res call({@JsonKey(name: 'access_token') String? accessToken});
}

/// @nodoc
class _$TokenDTOCopyWithImpl<$Res, $Val extends TokenDTO>
    implements $TokenDTOCopyWith<$Res> {
  _$TokenDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenDTOCopyWith<$Res> implements $TokenDTOCopyWith<$Res> {
  factory _$$_TokenDTOCopyWith(
          _$_TokenDTO value, $Res Function(_$_TokenDTO) then) =
      __$$_TokenDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'access_token') String? accessToken});
}

/// @nodoc
class __$$_TokenDTOCopyWithImpl<$Res>
    extends _$TokenDTOCopyWithImpl<$Res, _$_TokenDTO>
    implements _$$_TokenDTOCopyWith<$Res> {
  __$$_TokenDTOCopyWithImpl(
      _$_TokenDTO _value, $Res Function(_$_TokenDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_$_TokenDTO(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenDTO implements _TokenDTO {
  const _$_TokenDTO({@JsonKey(name: 'access_token') this.accessToken});

  factory _$_TokenDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TokenDTOFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;

  @override
  String toString() {
    return 'TokenDTO(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenDTO &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenDTOCopyWith<_$_TokenDTO> get copyWith =>
      __$$_TokenDTOCopyWithImpl<_$_TokenDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenDTOToJson(
      this,
    );
  }
}

abstract class _TokenDTO implements TokenDTO {
  const factory _TokenDTO(
      {@JsonKey(name: 'access_token') final String? accessToken}) = _$_TokenDTO;

  factory _TokenDTO.fromJson(Map<String, dynamic> json) = _$_TokenDTO.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_TokenDTOCopyWith<_$_TokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
