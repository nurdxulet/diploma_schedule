// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseDTO _$CourseDTOFromJson(Map<String, dynamic> json) {
  return _CourseDTO.fromJson(json);
}

/// @nodoc
mixin _$CourseDTO {
  int get courseNumber => throw _privateConstructorUsedError;
  String? get educationalProgramId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDTOCopyWith<CourseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDTOCopyWith<$Res> {
  factory $CourseDTOCopyWith(CourseDTO value, $Res Function(CourseDTO) then) =
      _$CourseDTOCopyWithImpl<$Res, CourseDTO>;
  @useResult
  $Res call({int courseNumber, String? educationalProgramId});
}

/// @nodoc
class _$CourseDTOCopyWithImpl<$Res, $Val extends CourseDTO>
    implements $CourseDTOCopyWith<$Res> {
  _$CourseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseNumber = null,
    Object? educationalProgramId = freezed,
  }) {
    return _then(_value.copyWith(
      courseNumber: null == courseNumber
          ? _value.courseNumber
          : courseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      educationalProgramId: freezed == educationalProgramId
          ? _value.educationalProgramId
          : educationalProgramId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseDTOCopyWith<$Res> implements $CourseDTOCopyWith<$Res> {
  factory _$$_CourseDTOCopyWith(
          _$_CourseDTO value, $Res Function(_$_CourseDTO) then) =
      __$$_CourseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int courseNumber, String? educationalProgramId});
}

/// @nodoc
class __$$_CourseDTOCopyWithImpl<$Res>
    extends _$CourseDTOCopyWithImpl<$Res, _$_CourseDTO>
    implements _$$_CourseDTOCopyWith<$Res> {
  __$$_CourseDTOCopyWithImpl(
      _$_CourseDTO _value, $Res Function(_$_CourseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseNumber = null,
    Object? educationalProgramId = freezed,
  }) {
    return _then(_$_CourseDTO(
      courseNumber: null == courseNumber
          ? _value.courseNumber
          : courseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      educationalProgramId: freezed == educationalProgramId
          ? _value.educationalProgramId
          : educationalProgramId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseDTO implements _CourseDTO {
  const _$_CourseDTO({required this.courseNumber, this.educationalProgramId});

  factory _$_CourseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CourseDTOFromJson(json);

  @override
  final int courseNumber;
  @override
  final String? educationalProgramId;

  @override
  String toString() {
    return 'CourseDTO(courseNumber: $courseNumber, educationalProgramId: $educationalProgramId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseDTO &&
            (identical(other.courseNumber, courseNumber) ||
                other.courseNumber == courseNumber) &&
            (identical(other.educationalProgramId, educationalProgramId) ||
                other.educationalProgramId == educationalProgramId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, courseNumber, educationalProgramId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseDTOCopyWith<_$_CourseDTO> get copyWith =>
      __$$_CourseDTOCopyWithImpl<_$_CourseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseDTOToJson(
      this,
    );
  }
}

abstract class _CourseDTO implements CourseDTO {
  const factory _CourseDTO(
      {required final int courseNumber,
      final String? educationalProgramId}) = _$_CourseDTO;

  factory _CourseDTO.fromJson(Map<String, dynamic> json) =
      _$_CourseDTO.fromJson;

  @override
  int get courseNumber;
  @override
  String? get educationalProgramId;
  @override
  @JsonKey(ignore: true)
  _$$_CourseDTOCopyWith<_$_CourseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
