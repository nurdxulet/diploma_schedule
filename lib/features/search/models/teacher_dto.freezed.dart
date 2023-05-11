// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherDTO _$TeacherDTOFromJson(Map<String, dynamic> json) {
  return _TeacherDTO.fromJson(json);
}

/// @nodoc
mixin _$TeacherDTO {
  String get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherDTOCopyWith<TeacherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherDTOCopyWith<$Res> {
  factory $TeacherDTOCopyWith(
          TeacherDTO value, $Res Function(TeacherDTO) then) =
      _$TeacherDTOCopyWithImpl<$Res, TeacherDTO>;
  @useResult
  $Res call(
      {String id,
      String? firstName,
      String? middleName,
      String? lastName,
      String? department});
}

/// @nodoc
class _$TeacherDTOCopyWithImpl<$Res, $Val extends TeacherDTO>
    implements $TeacherDTOCopyWith<$Res> {
  _$TeacherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? department = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeacherDTOCopyWith<$Res>
    implements $TeacherDTOCopyWith<$Res> {
  factory _$$_TeacherDTOCopyWith(
          _$_TeacherDTO value, $Res Function(_$_TeacherDTO) then) =
      __$$_TeacherDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? firstName,
      String? middleName,
      String? lastName,
      String? department});
}

/// @nodoc
class __$$_TeacherDTOCopyWithImpl<$Res>
    extends _$TeacherDTOCopyWithImpl<$Res, _$_TeacherDTO>
    implements _$$_TeacherDTOCopyWith<$Res> {
  __$$_TeacherDTOCopyWithImpl(
      _$_TeacherDTO _value, $Res Function(_$_TeacherDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? department = freezed,
  }) {
    return _then(_$_TeacherDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeacherDTO implements _TeacherDTO {
  const _$_TeacherDTO(
      {required this.id,
      this.firstName,
      this.middleName,
      this.lastName,
      this.department});

  factory _$_TeacherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TeacherDTOFromJson(json);

  @override
  final String id;
  @override
  final String? firstName;
  @override
  final String? middleName;
  @override
  final String? lastName;
  @override
  final String? department;

  @override
  String toString() {
    return 'TeacherDTO(id: $id, firstName: $firstName, middleName: $middleName, lastName: $lastName, department: $department)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeacherDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstName, middleName, lastName, department);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeacherDTOCopyWith<_$_TeacherDTO> get copyWith =>
      __$$_TeacherDTOCopyWithImpl<_$_TeacherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeacherDTOToJson(
      this,
    );
  }
}

abstract class _TeacherDTO implements TeacherDTO {
  const factory _TeacherDTO(
      {required final String id,
      final String? firstName,
      final String? middleName,
      final String? lastName,
      final String? department}) = _$_TeacherDTO;

  factory _TeacherDTO.fromJson(Map<String, dynamic> json) =
      _$_TeacherDTO.fromJson;

  @override
  String get id;
  @override
  String? get firstName;
  @override
  String? get middleName;
  @override
  String? get lastName;
  @override
  String? get department;
  @override
  @JsonKey(ignore: true)
  _$$_TeacherDTOCopyWith<_$_TeacherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
