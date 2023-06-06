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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) checkUniversity,
    required TResult Function(String universityCode) getEduPrograms,
    required TResult Function(
            String universityCode, String educationalProgramId)
        getEduProgramCourses,
    required TResult Function(String universityCode) getGroups,
    required TResult Function(String deviceToken, List<String> payload)
        turnOnNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? checkUniversity,
    TResult? Function(String universityCode)? getEduPrograms,
    TResult? Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
    TResult? Function(String universityCode)? getGroups,
    TResult? Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? checkUniversity,
    TResult Function(String universityCode)? getEduPrograms,
    TResult Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
    TResult Function(String universityCode)? getGroups,
    TResult Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUniversity value) checkUniversity,
    required TResult Function(_GetEduPrograms value) getEduPrograms,
    required TResult Function(_GetEduProgramCourses value) getEduProgramCourses,
    required TResult Function(_GetGroups value) getGroups,
    required TResult Function(_TurnOnNotifications value) turnOnNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUniversity value)? checkUniversity,
    TResult? Function(_GetEduPrograms value)? getEduPrograms,
    TResult? Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult? Function(_GetGroups value)? getGroups,
    TResult? Function(_TurnOnNotifications value)? turnOnNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUniversity value)? checkUniversity,
    TResult Function(_GetEduPrograms value)? getEduPrograms,
    TResult Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_TurnOnNotifications value)? turnOnNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingApiCopyWith<$Res> {
  factory $OnboardingApiCopyWith(
          OnboardingApi value, $Res Function(OnboardingApi) then) =
      _$OnboardingApiCopyWithImpl<$Res, OnboardingApi>;
}

/// @nodoc
class _$OnboardingApiCopyWithImpl<$Res, $Val extends OnboardingApi>
    implements $OnboardingApiCopyWith<$Res> {
  _$OnboardingApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckUniversityCopyWith<$Res> {
  factory _$$_CheckUniversityCopyWith(
          _$_CheckUniversity value, $Res Function(_$_CheckUniversity) then) =
      __$$_CheckUniversityCopyWithImpl<$Res>;
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
    required TResult Function(String universityCode) getGroups,
    required TResult Function(String deviceToken, List<String> payload)
        turnOnNotifications,
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
    TResult? Function(String universityCode)? getGroups,
    TResult? Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
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
    TResult Function(String universityCode)? getGroups,
    TResult Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
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
    required TResult Function(_GetGroups value) getGroups,
    required TResult Function(_TurnOnNotifications value) turnOnNotifications,
  }) {
    return checkUniversity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUniversity value)? checkUniversity,
    TResult? Function(_GetEduPrograms value)? getEduPrograms,
    TResult? Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult? Function(_GetGroups value)? getGroups,
    TResult? Function(_TurnOnNotifications value)? turnOnNotifications,
  }) {
    return checkUniversity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUniversity value)? checkUniversity,
    TResult Function(_GetEduPrograms value)? getEduPrograms,
    TResult Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_TurnOnNotifications value)? turnOnNotifications,
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

  String get universityCode;
  @JsonKey(ignore: true)
  _$$_CheckUniversityCopyWith<_$_CheckUniversity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetEduProgramsCopyWith<$Res> {
  factory _$$_GetEduProgramsCopyWith(
          _$_GetEduPrograms value, $Res Function(_$_GetEduPrograms) then) =
      __$$_GetEduProgramsCopyWithImpl<$Res>;
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
    required TResult Function(String universityCode) getGroups,
    required TResult Function(String deviceToken, List<String> payload)
        turnOnNotifications,
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
    TResult? Function(String universityCode)? getGroups,
    TResult? Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
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
    TResult Function(String universityCode)? getGroups,
    TResult Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
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
    required TResult Function(_GetGroups value) getGroups,
    required TResult Function(_TurnOnNotifications value) turnOnNotifications,
  }) {
    return getEduPrograms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUniversity value)? checkUniversity,
    TResult? Function(_GetEduPrograms value)? getEduPrograms,
    TResult? Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult? Function(_GetGroups value)? getGroups,
    TResult? Function(_TurnOnNotifications value)? turnOnNotifications,
  }) {
    return getEduPrograms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUniversity value)? checkUniversity,
    TResult Function(_GetEduPrograms value)? getEduPrograms,
    TResult Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_TurnOnNotifications value)? turnOnNotifications,
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

  String get universityCode;
  @JsonKey(ignore: true)
  _$$_GetEduProgramsCopyWith<_$_GetEduPrograms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetEduProgramCoursesCopyWith<$Res> {
  factory _$$_GetEduProgramCoursesCopyWith(_$_GetEduProgramCourses value,
          $Res Function(_$_GetEduProgramCourses) then) =
      __$$_GetEduProgramCoursesCopyWithImpl<$Res>;
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
    required TResult Function(String universityCode) getGroups,
    required TResult Function(String deviceToken, List<String> payload)
        turnOnNotifications,
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
    TResult? Function(String universityCode)? getGroups,
    TResult? Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
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
    TResult Function(String universityCode)? getGroups,
    TResult Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
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
    required TResult Function(_GetGroups value) getGroups,
    required TResult Function(_TurnOnNotifications value) turnOnNotifications,
  }) {
    return getEduProgramCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUniversity value)? checkUniversity,
    TResult? Function(_GetEduPrograms value)? getEduPrograms,
    TResult? Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult? Function(_GetGroups value)? getGroups,
    TResult? Function(_TurnOnNotifications value)? turnOnNotifications,
  }) {
    return getEduProgramCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUniversity value)? checkUniversity,
    TResult Function(_GetEduPrograms value)? getEduPrograms,
    TResult Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_TurnOnNotifications value)? turnOnNotifications,
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

  String get universityCode;
  String get educationalProgramId;
  @JsonKey(ignore: true)
  _$$_GetEduProgramCoursesCopyWith<_$_GetEduProgramCourses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetGroupsCopyWith<$Res> {
  factory _$$_GetGroupsCopyWith(
          _$_GetGroups value, $Res Function(_$_GetGroups) then) =
      __$$_GetGroupsCopyWithImpl<$Res>;
  @useResult
  $Res call({String universityCode});
}

/// @nodoc
class __$$_GetGroupsCopyWithImpl<$Res>
    extends _$OnboardingApiCopyWithImpl<$Res, _$_GetGroups>
    implements _$$_GetGroupsCopyWith<$Res> {
  __$$_GetGroupsCopyWithImpl(
      _$_GetGroups _value, $Res Function(_$_GetGroups) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
  }) {
    return _then(_$_GetGroups(
      null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetGroups extends _GetGroups {
  const _$_GetGroups(this.universityCode) : super._();

  @override
  final String universityCode;

  @override
  String toString() {
    return 'OnboardingApi.getGroups(universityCode: $universityCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetGroups &&
            (identical(other.universityCode, universityCode) ||
                other.universityCode == universityCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, universityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetGroupsCopyWith<_$_GetGroups> get copyWith =>
      __$$_GetGroupsCopyWithImpl<_$_GetGroups>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) checkUniversity,
    required TResult Function(String universityCode) getEduPrograms,
    required TResult Function(
            String universityCode, String educationalProgramId)
        getEduProgramCourses,
    required TResult Function(String universityCode) getGroups,
    required TResult Function(String deviceToken, List<String> payload)
        turnOnNotifications,
  }) {
    return getGroups(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? checkUniversity,
    TResult? Function(String universityCode)? getEduPrograms,
    TResult? Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
    TResult? Function(String universityCode)? getGroups,
    TResult? Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
  }) {
    return getGroups?.call(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? checkUniversity,
    TResult Function(String universityCode)? getEduPrograms,
    TResult Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
    TResult Function(String universityCode)? getGroups,
    TResult Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
    required TResult orElse(),
  }) {
    if (getGroups != null) {
      return getGroups(universityCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUniversity value) checkUniversity,
    required TResult Function(_GetEduPrograms value) getEduPrograms,
    required TResult Function(_GetEduProgramCourses value) getEduProgramCourses,
    required TResult Function(_GetGroups value) getGroups,
    required TResult Function(_TurnOnNotifications value) turnOnNotifications,
  }) {
    return getGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUniversity value)? checkUniversity,
    TResult? Function(_GetEduPrograms value)? getEduPrograms,
    TResult? Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult? Function(_GetGroups value)? getGroups,
    TResult? Function(_TurnOnNotifications value)? turnOnNotifications,
  }) {
    return getGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUniversity value)? checkUniversity,
    TResult Function(_GetEduPrograms value)? getEduPrograms,
    TResult Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_TurnOnNotifications value)? turnOnNotifications,
    required TResult orElse(),
  }) {
    if (getGroups != null) {
      return getGroups(this);
    }
    return orElse();
  }
}

abstract class _GetGroups extends OnboardingApi {
  const factory _GetGroups(final String universityCode) = _$_GetGroups;
  const _GetGroups._() : super._();

  String get universityCode;
  @JsonKey(ignore: true)
  _$$_GetGroupsCopyWith<_$_GetGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TurnOnNotificationsCopyWith<$Res> {
  factory _$$_TurnOnNotificationsCopyWith(_$_TurnOnNotifications value,
          $Res Function(_$_TurnOnNotifications) then) =
      __$$_TurnOnNotificationsCopyWithImpl<$Res>;
  @useResult
  $Res call({String deviceToken, List<String> payload});
}

/// @nodoc
class __$$_TurnOnNotificationsCopyWithImpl<$Res>
    extends _$OnboardingApiCopyWithImpl<$Res, _$_TurnOnNotifications>
    implements _$$_TurnOnNotificationsCopyWith<$Res> {
  __$$_TurnOnNotificationsCopyWithImpl(_$_TurnOnNotifications _value,
      $Res Function(_$_TurnOnNotifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = null,
    Object? payload = null,
  }) {
    return _then(_$_TurnOnNotifications(
      null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_TurnOnNotifications extends _TurnOnNotifications {
  const _$_TurnOnNotifications(this.deviceToken, final List<String> payload)
      : _payload = payload,
        super._();

  @override
  final String deviceToken;
  final List<String> _payload;
  @override
  List<String> get payload {
    if (_payload is EqualUnmodifiableListView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payload);
  }

  @override
  String toString() {
    return 'OnboardingApi.turnOnNotifications(deviceToken: $deviceToken, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TurnOnNotifications &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            const DeepCollectionEquality().equals(other._payload, _payload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, deviceToken, const DeepCollectionEquality().hash(_payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TurnOnNotificationsCopyWith<_$_TurnOnNotifications> get copyWith =>
      __$$_TurnOnNotificationsCopyWithImpl<_$_TurnOnNotifications>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) checkUniversity,
    required TResult Function(String universityCode) getEduPrograms,
    required TResult Function(
            String universityCode, String educationalProgramId)
        getEduProgramCourses,
    required TResult Function(String universityCode) getGroups,
    required TResult Function(String deviceToken, List<String> payload)
        turnOnNotifications,
  }) {
    return turnOnNotifications(deviceToken, payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? checkUniversity,
    TResult? Function(String universityCode)? getEduPrograms,
    TResult? Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
    TResult? Function(String universityCode)? getGroups,
    TResult? Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
  }) {
    return turnOnNotifications?.call(deviceToken, payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? checkUniversity,
    TResult Function(String universityCode)? getEduPrograms,
    TResult Function(String universityCode, String educationalProgramId)?
        getEduProgramCourses,
    TResult Function(String universityCode)? getGroups,
    TResult Function(String deviceToken, List<String> payload)?
        turnOnNotifications,
    required TResult orElse(),
  }) {
    if (turnOnNotifications != null) {
      return turnOnNotifications(deviceToken, payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUniversity value) checkUniversity,
    required TResult Function(_GetEduPrograms value) getEduPrograms,
    required TResult Function(_GetEduProgramCourses value) getEduProgramCourses,
    required TResult Function(_GetGroups value) getGroups,
    required TResult Function(_TurnOnNotifications value) turnOnNotifications,
  }) {
    return turnOnNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUniversity value)? checkUniversity,
    TResult? Function(_GetEduPrograms value)? getEduPrograms,
    TResult? Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult? Function(_GetGroups value)? getGroups,
    TResult? Function(_TurnOnNotifications value)? turnOnNotifications,
  }) {
    return turnOnNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUniversity value)? checkUniversity,
    TResult Function(_GetEduPrograms value)? getEduPrograms,
    TResult Function(_GetEduProgramCourses value)? getEduProgramCourses,
    TResult Function(_GetGroups value)? getGroups,
    TResult Function(_TurnOnNotifications value)? turnOnNotifications,
    required TResult orElse(),
  }) {
    if (turnOnNotifications != null) {
      return turnOnNotifications(this);
    }
    return orElse();
  }
}

abstract class _TurnOnNotifications extends OnboardingApi {
  const factory _TurnOnNotifications(
          final String deviceToken, final List<String> payload) =
      _$_TurnOnNotifications;
  const _TurnOnNotifications._() : super._();

  String get deviceToken;
  List<String> get payload;
  @JsonKey(ignore: true)
  _$$_TurnOnNotificationsCopyWith<_$_TurnOnNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}
