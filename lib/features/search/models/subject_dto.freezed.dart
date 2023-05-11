// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectDTO _$SubjectDTOFromJson(Map<String, dynamic> json) {
  return _SubjectDTO.fromJson(json);
}

/// @nodoc
mixin _$SubjectDTO {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectDTOCopyWith<SubjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectDTOCopyWith<$Res> {
  factory $SubjectDTOCopyWith(
          SubjectDTO value, $Res Function(SubjectDTO) then) =
      _$SubjectDTOCopyWithImpl<$Res, SubjectDTO>;
  @useResult
  $Res call({String id, String? title, String? code});
}

/// @nodoc
class _$SubjectDTOCopyWithImpl<$Res, $Val extends SubjectDTO>
    implements $SubjectDTOCopyWith<$Res> {
  _$SubjectDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? code = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubjectDTOCopyWith<$Res>
    implements $SubjectDTOCopyWith<$Res> {
  factory _$$_SubjectDTOCopyWith(
          _$_SubjectDTO value, $Res Function(_$_SubjectDTO) then) =
      __$$_SubjectDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? title, String? code});
}

/// @nodoc
class __$$_SubjectDTOCopyWithImpl<$Res>
    extends _$SubjectDTOCopyWithImpl<$Res, _$_SubjectDTO>
    implements _$$_SubjectDTOCopyWith<$Res> {
  __$$_SubjectDTOCopyWithImpl(
      _$_SubjectDTO _value, $Res Function(_$_SubjectDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_SubjectDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$_SubjectDTO implements _SubjectDTO {
  const _$_SubjectDTO({required this.id, this.title, this.code});

  factory _$_SubjectDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectDTOFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  final String? code;

  @override
  String toString() {
    return 'SubjectDTO(id: $id, title: $title, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubjectDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubjectDTOCopyWith<_$_SubjectDTO> get copyWith =>
      __$$_SubjectDTOCopyWithImpl<_$_SubjectDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectDTOToJson(
      this,
    );
  }
}

abstract class _SubjectDTO implements SubjectDTO {
  const factory _SubjectDTO(
      {required final String id,
      final String? title,
      final String? code}) = _$_SubjectDTO;

  factory _SubjectDTO.fromJson(Map<String, dynamic> json) =
      _$_SubjectDTO.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectDTOCopyWith<_$_SubjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
