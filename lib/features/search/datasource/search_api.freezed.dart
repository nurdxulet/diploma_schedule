// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchApi {
  String get universityCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) getAllGroups,
    required TResult Function(String universityCode) getAllTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? getAllGroups,
    TResult? Function(String universityCode)? getAllTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? getAllGroups,
    TResult Function(String universityCode)? getAllTeachers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllGroups value) getAllGroups,
    required TResult Function(_GetAllTeachers value) getAllTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllGroups value)? getAllGroups,
    TResult? Function(_GetAllTeachers value)? getAllTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllGroups value)? getAllGroups,
    TResult Function(_GetAllTeachers value)? getAllTeachers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchApiCopyWith<SearchApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchApiCopyWith<$Res> {
  factory $SearchApiCopyWith(SearchApi value, $Res Function(SearchApi) then) =
      _$SearchApiCopyWithImpl<$Res, SearchApi>;
  @useResult
  $Res call({String universityCode});
}

/// @nodoc
class _$SearchApiCopyWithImpl<$Res, $Val extends SearchApi>
    implements $SearchApiCopyWith<$Res> {
  _$SearchApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
  }) {
    return _then(_value.copyWith(
      universityCode: null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetAllGroupsCopyWith<$Res>
    implements $SearchApiCopyWith<$Res> {
  factory _$$_GetAllGroupsCopyWith(
          _$_GetAllGroups value, $Res Function(_$_GetAllGroups) then) =
      __$$_GetAllGroupsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String universityCode});
}

/// @nodoc
class __$$_GetAllGroupsCopyWithImpl<$Res>
    extends _$SearchApiCopyWithImpl<$Res, _$_GetAllGroups>
    implements _$$_GetAllGroupsCopyWith<$Res> {
  __$$_GetAllGroupsCopyWithImpl(
      _$_GetAllGroups _value, $Res Function(_$_GetAllGroups) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
  }) {
    return _then(_$_GetAllGroups(
      null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllGroups extends _GetAllGroups {
  const _$_GetAllGroups(this.universityCode) : super._();

  @override
  final String universityCode;

  @override
  String toString() {
    return 'SearchApi.getAllGroups(universityCode: $universityCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllGroups &&
            (identical(other.universityCode, universityCode) ||
                other.universityCode == universityCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, universityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllGroupsCopyWith<_$_GetAllGroups> get copyWith =>
      __$$_GetAllGroupsCopyWithImpl<_$_GetAllGroups>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) getAllGroups,
    required TResult Function(String universityCode) getAllTeachers,
  }) {
    return getAllGroups(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? getAllGroups,
    TResult? Function(String universityCode)? getAllTeachers,
  }) {
    return getAllGroups?.call(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? getAllGroups,
    TResult Function(String universityCode)? getAllTeachers,
    required TResult orElse(),
  }) {
    if (getAllGroups != null) {
      return getAllGroups(universityCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllGroups value) getAllGroups,
    required TResult Function(_GetAllTeachers value) getAllTeachers,
  }) {
    return getAllGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllGroups value)? getAllGroups,
    TResult? Function(_GetAllTeachers value)? getAllTeachers,
  }) {
    return getAllGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllGroups value)? getAllGroups,
    TResult Function(_GetAllTeachers value)? getAllTeachers,
    required TResult orElse(),
  }) {
    if (getAllGroups != null) {
      return getAllGroups(this);
    }
    return orElse();
  }
}

abstract class _GetAllGroups extends SearchApi {
  const factory _GetAllGroups(final String universityCode) = _$_GetAllGroups;
  const _GetAllGroups._() : super._();

  @override
  String get universityCode;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllGroupsCopyWith<_$_GetAllGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllTeachersCopyWith<$Res>
    implements $SearchApiCopyWith<$Res> {
  factory _$$_GetAllTeachersCopyWith(
          _$_GetAllTeachers value, $Res Function(_$_GetAllTeachers) then) =
      __$$_GetAllTeachersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String universityCode});
}

/// @nodoc
class __$$_GetAllTeachersCopyWithImpl<$Res>
    extends _$SearchApiCopyWithImpl<$Res, _$_GetAllTeachers>
    implements _$$_GetAllTeachersCopyWith<$Res> {
  __$$_GetAllTeachersCopyWithImpl(
      _$_GetAllTeachers _value, $Res Function(_$_GetAllTeachers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
  }) {
    return _then(_$_GetAllTeachers(
      null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllTeachers extends _GetAllTeachers {
  const _$_GetAllTeachers(this.universityCode) : super._();

  @override
  final String universityCode;

  @override
  String toString() {
    return 'SearchApi.getAllTeachers(universityCode: $universityCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllTeachers &&
            (identical(other.universityCode, universityCode) ||
                other.universityCode == universityCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, universityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllTeachersCopyWith<_$_GetAllTeachers> get copyWith =>
      __$$_GetAllTeachersCopyWithImpl<_$_GetAllTeachers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) getAllGroups,
    required TResult Function(String universityCode) getAllTeachers,
  }) {
    return getAllTeachers(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? getAllGroups,
    TResult? Function(String universityCode)? getAllTeachers,
  }) {
    return getAllTeachers?.call(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? getAllGroups,
    TResult Function(String universityCode)? getAllTeachers,
    required TResult orElse(),
  }) {
    if (getAllTeachers != null) {
      return getAllTeachers(universityCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllGroups value) getAllGroups,
    required TResult Function(_GetAllTeachers value) getAllTeachers,
  }) {
    return getAllTeachers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllGroups value)? getAllGroups,
    TResult? Function(_GetAllTeachers value)? getAllTeachers,
  }) {
    return getAllTeachers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllGroups value)? getAllGroups,
    TResult Function(_GetAllTeachers value)? getAllTeachers,
    required TResult orElse(),
  }) {
    if (getAllTeachers != null) {
      return getAllTeachers(this);
    }
    return orElse();
  }
}

abstract class _GetAllTeachers extends SearchApi {
  const factory _GetAllTeachers(final String universityCode) =
      _$_GetAllTeachers;
  const _GetAllTeachers._() : super._();

  @override
  String get universityCode;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllTeachersCopyWith<_$_GetAllTeachers> get copyWith =>
      throw _privateConstructorUsedError;
}
