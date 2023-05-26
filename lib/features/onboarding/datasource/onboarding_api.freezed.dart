// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingApi {
  String get universityCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) checkUniversity,
    required TResult Function(String universityCode) getEduPrograms,
    required TResult Function(
            String universityCode, String educationalProgramId)
        getEduProgramCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? checkUniversity,
    TResult? Function(String universityCode)? getEduPrograms,
    TResult? Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? checkUniversity,
    TResult Function(String universityCode)? getEduPrograms,
    TResult Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUniversity value) checkUniversity,
    required TResult Function(_GetEduPrograms value) getEduPrograms,
    required TResult Function(_GetEduProgramCourses value) getEduProgramCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUniversity value)? checkUniversity,
    TResult? Function(_GetEduPrograms value)? getEduPrograms,
    TResult? Function(_GetEduProgramCourses value)? getEduProgramCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUniversity value)? checkUniversity,
    TResult Function(_GetEduPrograms value)? getEduPrograms,
    TResult Function(_GetEduProgramCourses value)? getEduProgramCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingApiCopyWith<OnboardingApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingApiCopyWith<$Res> {
  factory $OnboardingApiCopyWith(
          OnboardingApi value, $Res Function(OnboardingApi) then) =
      _$OnboardingApiCopyWithImpl<$Res, OnboardingApi>;
  @useResult
  $Res call({String universityCode});
}

/// @nodoc
class _$OnboardingApiCopyWithImpl<$Res, $Val extends OnboardingApi>
    implements $OnboardingApiCopyWith<$Res> {
  _$OnboardingApiCopyWithImpl(this._value, this._then);

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
abstract class _$$_CheckUniversityCopyWith<$Res>
    implements $OnboardingApiCopyWith<$Res> {
  factory _$$_CheckUniversityCopyWith(
          _$_CheckUniversity value, $Res Function(_$_CheckUniversity) then) =
      __$$_CheckUniversityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String universityCode});
}

/// @nodoc
class __$$_CheckUniversityCopyWithImpl<$Res>
    extends _$OnboardingApiCopyWithImpl<$Res, _$_CheckUniversity>
    implements _$$_CheckUniversityCopyWith<$Res> {
  __$$_CheckUniversityCopyWithImpl(
      _$_CheckUniversity _value, $Res Function(_$_CheckUniversity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
  }) {
    return _then(_$_CheckUniversity(
      null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckUniversity extends _CheckUniversity {
  const _$_CheckUniversity(this.universityCode) : super._();

  @override
  final String universityCode;

  @override
  String toString() {
    return 'OnboardingApi.checkUniversity(universityCode: $universityCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckUniversity &&
            (identical(other.universityCode, universityCode) ||
                other.universityCode == universityCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, universityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckUniversityCopyWith<_$_CheckUniversity> get copyWith =>
      __$$_CheckUniversityCopyWithImpl<_$_CheckUniversity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) checkUniversity,
    required TResult Function(String universityCode) getEduPrograms,
    required TResult Function(
            String universityCode, String educationalProgramId)
        getEduProgramCourses,
  }) {
    return checkUniversity(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? checkUniversity,
    TResult? Function(String universityCode)? getEduPrograms,
    TResult? Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
  }) {
    return checkUniversity?.call(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? checkUniversity,
    TResult Function(String universityCode)? getEduPrograms,
    TResult Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
    required TResult orElse(),
  }) {
    if (checkUniversity != null) {
      return checkUniversity(universityCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUniversity value) checkUniversity,
    required TResult Function(_GetEduPrograms value) getEduPrograms,
    required TResult Function(_GetEduProgramCourses value) getEduProgramCourses,
  }) {
    return checkUniversity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUniversity value)? checkUniversity,
    TResult? Function(_GetEduPrograms value)? getEduPrograms,
    TResult? Function(_GetEduProgramCourses value)? getEduProgramCourses,
  }) {
    return checkUniversity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUniversity value)? checkUniversity,
    TResult Function(_GetEduPrograms value)? getEduPrograms,
    TResult Function(_GetEduProgramCourses value)? getEduProgramCourses,
    required TResult orElse(),
  }) {
    if (checkUniversity != null) {
      return checkUniversity(this);
    }
    return orElse();
  }
}

abstract class _CheckUniversity extends OnboardingApi {
  const factory _CheckUniversity(final String universityCode) =
      _$_CheckUniversity;
  const _CheckUniversity._() : super._();

  @override
  String get universityCode;
  @override
  @JsonKey(ignore: true)
  _$$_CheckUniversityCopyWith<_$_CheckUniversity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetEduProgramsCopyWith<$Res>
    implements $OnboardingApiCopyWith<$Res> {
  factory _$$_GetEduProgramsCopyWith(
          _$_GetEduPrograms value, $Res Function(_$_GetEduPrograms) then) =
      __$$_GetEduProgramsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String universityCode});
}

/// @nodoc
class __$$_GetEduProgramsCopyWithImpl<$Res>
    extends _$OnboardingApiCopyWithImpl<$Res, _$_GetEduPrograms>
    implements _$$_GetEduProgramsCopyWith<$Res> {
  __$$_GetEduProgramsCopyWithImpl(
      _$_GetEduPrograms _value, $Res Function(_$_GetEduPrograms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
  }) {
    return _then(_$_GetEduPrograms(
      null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetEduPrograms extends _GetEduPrograms {
  const _$_GetEduPrograms(this.universityCode) : super._();

  @override
  final String universityCode;

  @override
  String toString() {
    return 'OnboardingApi.getEduPrograms(universityCode: $universityCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetEduPrograms &&
            (identical(other.universityCode, universityCode) ||
                other.universityCode == universityCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, universityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetEduProgramsCopyWith<_$_GetEduPrograms> get copyWith =>
      __$$_GetEduProgramsCopyWithImpl<_$_GetEduPrograms>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) checkUniversity,
    required TResult Function(String universityCode) getEduPrograms,
    required TResult Function(
            String universityCode, String educationalProgramId)
        getEduProgramCourses,
  }) {
    return getEduPrograms(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? checkUniversity,
    TResult? Function(String universityCode)? getEduPrograms,
    TResult? Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
  }) {
    return getEduPrograms?.call(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? checkUniversity,
    TResult Function(String universityCode)? getEduPrograms,
    TResult Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
    required TResult orElse(),
  }) {
    if (getEduPrograms != null) {
      return getEduPrograms(universityCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUniversity value) checkUniversity,
    required TResult Function(_GetEduPrograms value) getEduPrograms,
    required TResult Function(_GetEduProgramCourses value) getEduProgramCourses,
  }) {
    return getEduPrograms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUniversity value)? checkUniversity,
    TResult? Function(_GetEduPrograms value)? getEduPrograms,
    TResult? Function(_GetEduProgramCourses value)? getEduProgramCourses,
  }) {
    return getEduPrograms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUniversity value)? checkUniversity,
    TResult Function(_GetEduPrograms value)? getEduPrograms,
    TResult Function(_GetEduProgramCourses value)? getEduProgramCourses,
    required TResult orElse(),
  }) {
    if (getEduPrograms != null) {
      return getEduPrograms(this);
    }
    return orElse();
  }
}

abstract class _GetEduPrograms extends OnboardingApi {
  const factory _GetEduPrograms(final String universityCode) =
      _$_GetEduPrograms;
  const _GetEduPrograms._() : super._();

  @override
  String get universityCode;
  @override
  @JsonKey(ignore: true)
  _$$_GetEduProgramsCopyWith<_$_GetEduPrograms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetEduProgramCoursesCopyWith<$Res>
    implements $OnboardingApiCopyWith<$Res> {
  factory _$$_GetEduProgramCoursesCopyWith(_$_GetEduProgramCourses value,
          $Res Function(_$_GetEduProgramCourses) then) =
      __$$_GetEduProgramCoursesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String universityCode, String educationalProgramId});
}

/// @nodoc
class __$$_GetEduProgramCoursesCopyWithImpl<$Res>
    extends _$OnboardingApiCopyWithImpl<$Res, _$_GetEduProgramCourses>
    implements _$$_GetEduProgramCoursesCopyWith<$Res> {
  __$$_GetEduProgramCoursesCopyWithImpl(_$_GetEduProgramCourses _value,
      $Res Function(_$_GetEduProgramCourses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
    Object? educationalProgramId = null,
  }) {
    return _then(_$_GetEduProgramCourses(
      null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == educationalProgramId
          ? _value.educationalProgramId
          : educationalProgramId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetEduProgramCourses extends _GetEduProgramCourses {
  const _$_GetEduProgramCourses(this.universityCode, this.educationalProgramId)
      : super._();

  @override
  final String universityCode;
  @override
  final String educationalProgramId;

  @override
  String toString() {
    return 'OnboardingApi.getEduProgramCourses(universityCode: $universityCode, educationalProgramId: $educationalProgramId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetEduProgramCourses &&
            (identical(other.universityCode, universityCode) ||
                other.universityCode == universityCode) &&
            (identical(other.educationalProgramId, educationalProgramId) ||
                other.educationalProgramId == educationalProgramId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, universityCode, educationalProgramId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetEduProgramCoursesCopyWith<_$_GetEduProgramCourses> get copyWith =>
      __$$_GetEduProgramCoursesCopyWithImpl<_$_GetEduProgramCourses>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) checkUniversity,
    required TResult Function(String universityCode) getEduPrograms,
    required TResult Function(
            String universityCode, String educationalProgramId)
        getEduProgramCourses,
  }) {
    return getEduProgramCourses(universityCode, educationalProgramId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? checkUniversity,
    TResult? Function(String universityCode)? getEduPrograms,
    TResult? Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
  }) {
    return getEduProgramCourses?.call(universityCode, educationalProgramId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? checkUniversity,
    TResult Function(String universityCode)? getEduPrograms,
    TResult Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
    required TResult orElse(),
  }) {
    if (getEduProgramCourses != null) {
      return getEduProgramCourses(universityCode, educationalProgramId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUniversity value) checkUniversity,
    required TResult Function(_GetEduPrograms value) getEduPrograms,
    required TResult Function(_GetEduProgramCourses value) getEduProgramCourses,
  }) {
    return getEduProgramCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUniversity value)? checkUniversity,
    TResult? Function(_GetEduPrograms value)? getEduPrograms,
    TResult? Function(_GetEduProgramCourses value)? getEduProgramCourses,
  }) {
    return getEduProgramCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUniversity value)? checkUniversity,
    TResult Function(_GetEduPrograms value)? getEduPrograms,
    TResult Function(_GetEduProgramCourses value)? getEduProgramCourses,
    required TResult orElse(),
  }) {
    if (getEduProgramCourses != null) {
      return getEduProgramCourses(this);
    }
    return orElse();
  }
}

abstract class _GetEduProgramCourses extends OnboardingApi {
  const factory _GetEduProgramCourses(
          final String universityCode, final String educationalProgramId) =
      _$_GetEduProgramCourses;
  const _GetEduProgramCourses._() : super._();

  @override
  String get universityCode;
  String get educationalProgramId;
  @override
  @JsonKey(ignore: true)
  _$$_GetEduProgramCoursesCopyWith<_$_GetEduProgramCourses> get copyWith =>
      throw _privateConstructorUsedError;
}
