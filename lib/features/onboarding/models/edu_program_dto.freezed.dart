// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edu_program_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EduProgramDTO _$EduProgramDTOFromJson(Map<String, dynamic> json) {
  return _EduProgramDTO.fromJson(json);
}

/// @nodoc
mixin _$EduProgramDTO {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get elective => throw _privateConstructorUsedError;
  String? get universityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EduProgramDTOCopyWith<EduProgramDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EduProgramDTOCopyWith<$Res> {
  factory $EduProgramDTOCopyWith(
          EduProgramDTO value, $Res Function(EduProgramDTO) then) =
      _$EduProgramDTOCopyWithImpl<$Res, EduProgramDTO>;
  @useResult
  $Res call({String id, String? title, bool? elective, String? universityId});
}

/// @nodoc
class _$EduProgramDTOCopyWithImpl<$Res, $Val extends EduProgramDTO>
    implements $EduProgramDTOCopyWith<$Res> {
  _$EduProgramDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? elective = freezed,
    Object? universityId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      elective: freezed == elective
          ? _value.elective
          : elective // ignore: cast_nullable_to_non_nullable
              as bool?,
      universityId: freezed == universityId
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EduProgramDTOCopyWith<$Res>
    implements $EduProgramDTOCopyWith<$Res> {
  factory _$$_EduProgramDTOCopyWith(
          _$_EduProgramDTO value, $Res Function(_$_EduProgramDTO) then) =
      __$$_EduProgramDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? title, bool? elective, String? universityId});
}

/// @nodoc
class __$$_EduProgramDTOCopyWithImpl<$Res>
    extends _$EduProgramDTOCopyWithImpl<$Res, _$_EduProgramDTO>
    implements _$$_EduProgramDTOCopyWith<$Res> {
  __$$_EduProgramDTOCopyWithImpl(
      _$_EduProgramDTO _value, $Res Function(_$_EduProgramDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? elective = freezed,
    Object? universityId = freezed,
  }) {
    return _then(_$_EduProgramDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      elective: freezed == elective
          ? _value.elective
          : elective // ignore: cast_nullable_to_non_nullable
              as bool?,
      universityId: freezed == universityId
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EduProgramDTO implements _EduProgramDTO {
  const _$_EduProgramDTO(
      {required this.id, this.title, this.elective, this.universityId});

  factory _$_EduProgramDTO.fromJson(Map<String, dynamic> json) =>
      _$$_EduProgramDTOFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  final bool? elective;
  @override
  final String? universityId;

  @override
  String toString() {
    return 'EduProgramDTO(id: $id, title: $title, elective: $elective, universityId: $universityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EduProgramDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.elective, elective) ||
                other.elective == elective) &&
            (identical(other.universityId, universityId) ||
                other.universityId == universityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, elective, universityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EduProgramDTOCopyWith<_$_EduProgramDTO> get copyWith =>
      __$$_EduProgramDTOCopyWithImpl<_$_EduProgramDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EduProgramDTOToJson(
      this,
    );
  }
}

abstract class _EduProgramDTO implements EduProgramDTO {
  const factory _EduProgramDTO(
      {required final String id,
      final String? title,
      final bool? elective,
      final String? universityId}) = _$_EduProgramDTO;

  factory _EduProgramDTO.fromJson(Map<String, dynamic> json) =
      _$_EduProgramDTO.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  bool? get elective;
  @override
  String? get universityId;
  @override
  @JsonKey(ignore: true)
  _$$_EduProgramDTOCopyWith<_$_EduProgramDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
