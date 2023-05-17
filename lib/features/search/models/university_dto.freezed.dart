// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversityDTO _$UniversityDTOFromJson(Map<String, dynamic> json) {
  return _UniversityDTO.fromJson(json);
}

/// @nodoc
mixin _$UniversityDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityDTOCopyWith<UniversityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityDTOCopyWith<$Res> {
  factory $UniversityDTOCopyWith(
          UniversityDTO value, $Res Function(UniversityDTO) then) =
      _$UniversityDTOCopyWithImpl<$Res, UniversityDTO>;
  @useResult
  $Res call({String? id, String? name, String? userId, String? code});
}

/// @nodoc
class _$UniversityDTOCopyWithImpl<$Res, $Val extends UniversityDTO>
    implements $UniversityDTOCopyWith<$Res> {
  _$UniversityDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UniversityDTOCopyWith<$Res>
    implements $UniversityDTOCopyWith<$Res> {
  factory _$$_UniversityDTOCopyWith(
          _$_UniversityDTO value, $Res Function(_$_UniversityDTO) then) =
      __$$_UniversityDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? userId, String? code});
}

/// @nodoc
class __$$_UniversityDTOCopyWithImpl<$Res>
    extends _$UniversityDTOCopyWithImpl<$Res, _$_UniversityDTO>
    implements _$$_UniversityDTOCopyWith<$Res> {
  __$$_UniversityDTOCopyWithImpl(
      _$_UniversityDTO _value, $Res Function(_$_UniversityDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_UniversityDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniversityDTO implements _UniversityDTO {
  const _$_UniversityDTO({this.id, this.name, this.userId, this.code});

  factory _$_UniversityDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? userId;
  @override
  final String? code;

  @override
  String toString() {
    return 'UniversityDTO(id: $id, name: $name, userId: $userId, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, userId, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniversityDTOCopyWith<_$_UniversityDTO> get copyWith =>
      __$$_UniversityDTOCopyWithImpl<_$_UniversityDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityDTOToJson(
      this,
    );
  }
}

abstract class _UniversityDTO implements UniversityDTO {
  const factory _UniversityDTO(
      {final String? id,
      final String? name,
      final String? userId,
      final String? code}) = _$_UniversityDTO;

  factory _UniversityDTO.fromJson(Map<String, dynamic> json) =
      _$_UniversityDTO.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get userId;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityDTOCopyWith<_$_UniversityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
