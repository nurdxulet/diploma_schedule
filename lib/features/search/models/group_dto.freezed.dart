// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupDTO _$GroupDTOFromJson(Map<String, dynamic> json) {
  return _GroupDTO.fromJson(json);
}

/// @nodoc
mixin _$GroupDTO {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get course => throw _privateConstructorUsedError;
  String? get educationalProgramId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupDTOCopyWith<GroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDTOCopyWith<$Res> {
  factory $GroupDTOCopyWith(GroupDTO value, $Res Function(GroupDTO) then) =
      _$GroupDTOCopyWithImpl<$Res, GroupDTO>;
  @useResult
  $Res call(
      {String id, String? title, int? course, String? educationalProgramId});
}

/// @nodoc
class _$GroupDTOCopyWithImpl<$Res, $Val extends GroupDTO>
    implements $GroupDTOCopyWith<$Res> {
  _$GroupDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? course = freezed,
    Object? educationalProgramId = freezed,
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
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int?,
      educationalProgramId: freezed == educationalProgramId
          ? _value.educationalProgramId
          : educationalProgramId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupDTOCopyWith<$Res> implements $GroupDTOCopyWith<$Res> {
  factory _$$_GroupDTOCopyWith(
          _$_GroupDTO value, $Res Function(_$_GroupDTO) then) =
      __$$_GroupDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String? title, int? course, String? educationalProgramId});
}

/// @nodoc
class __$$_GroupDTOCopyWithImpl<$Res>
    extends _$GroupDTOCopyWithImpl<$Res, _$_GroupDTO>
    implements _$$_GroupDTOCopyWith<$Res> {
  __$$_GroupDTOCopyWithImpl(
      _$_GroupDTO _value, $Res Function(_$_GroupDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? course = freezed,
    Object? educationalProgramId = freezed,
  }) {
    return _then(_$_GroupDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int?,
      educationalProgramId: freezed == educationalProgramId
          ? _value.educationalProgramId
          : educationalProgramId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupDTO implements _GroupDTO {
  const _$_GroupDTO(
      {required this.id, this.title, this.course, this.educationalProgramId});

  factory _$_GroupDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GroupDTOFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  final int? course;
  @override
  final String? educationalProgramId;

  @override
  String toString() {
    return 'GroupDTO(id: $id, title: $title, course: $course, educationalProgramId: $educationalProgramId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.educationalProgramId, educationalProgramId) ||
                other.educationalProgramId == educationalProgramId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, course, educationalProgramId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupDTOCopyWith<_$_GroupDTO> get copyWith =>
      __$$_GroupDTOCopyWithImpl<_$_GroupDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupDTOToJson(
      this,
    );
  }
}

abstract class _GroupDTO implements GroupDTO {
  const factory _GroupDTO(
      {required final String id,
      final String? title,
      final int? course,
      final String? educationalProgramId}) = _$_GroupDTO;

  factory _GroupDTO.fromJson(Map<String, dynamic> json) = _$_GroupDTO.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  int? get course;
  @override
  String? get educationalProgramId;
  @override
  @JsonKey(ignore: true)
  _$$_GroupDTOCopyWith<_$_GroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
