// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeApi {
  String get universityCode => throw _privateConstructorUsedError;
  String get searchId => throw _privateConstructorUsedError;
  String get searchType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String universityCode, String searchId, String searchType)
        getAllSchedules,
    required TResult Function(
            String universityCode, String searchId, String searchType)
        getMySchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String universityCode, String searchId, String searchType)?
        getAllSchedules,
    TResult? Function(
            String universityCode, String searchId, String searchType)?
        getMySchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode, String searchId, String searchType)?
        getAllSchedules,
    TResult Function(String universityCode, String searchId, String searchType)?
        getMySchedules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSchedules value) getAllSchedules,
    required TResult Function(_GetMySchedules value) getMySchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllSchedules value)? getAllSchedules,
    TResult? Function(_GetMySchedules value)? getMySchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSchedules value)? getAllSchedules,
    TResult Function(_GetMySchedules value)? getMySchedules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeApiCopyWith<HomeApi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeApiCopyWith<$Res> {
  factory $HomeApiCopyWith(HomeApi value, $Res Function(HomeApi) then) =
      _$HomeApiCopyWithImpl<$Res, HomeApi>;
  @useResult
  $Res call({String universityCode, String searchId, String searchType});
}

/// @nodoc
class _$HomeApiCopyWithImpl<$Res, $Val extends HomeApi>
    implements $HomeApiCopyWith<$Res> {
  _$HomeApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
    Object? searchId = null,
    Object? searchType = null,
  }) {
    return _then(_value.copyWith(
      universityCode: null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
      searchId: null == searchId
          ? _value.searchId
          : searchId // ignore: cast_nullable_to_non_nullable
              as String,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetAllSchedulesCopyWith<$Res>
    implements $HomeApiCopyWith<$Res> {
  factory _$$_GetAllSchedulesCopyWith(
          _$_GetAllSchedules value, $Res Function(_$_GetAllSchedules) then) =
      __$$_GetAllSchedulesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String universityCode, String searchId, String searchType});
}

/// @nodoc
class __$$_GetAllSchedulesCopyWithImpl<$Res>
    extends _$HomeApiCopyWithImpl<$Res, _$_GetAllSchedules>
    implements _$$_GetAllSchedulesCopyWith<$Res> {
  __$$_GetAllSchedulesCopyWithImpl(
      _$_GetAllSchedules _value, $Res Function(_$_GetAllSchedules) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
    Object? searchId = null,
    Object? searchType = null,
  }) {
    return _then(_$_GetAllSchedules(
      null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == searchId
          ? _value.searchId
          : searchId // ignore: cast_nullable_to_non_nullable
              as String,
      null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllSchedules extends _GetAllSchedules {
  const _$_GetAllSchedules(this.universityCode, this.searchId, this.searchType)
      : super._();

  @override
  final String universityCode;
  @override
  final String searchId;
  @override
  final String searchType;

  @override
  String toString() {
    return 'HomeApi.getAllSchedules(universityCode: $universityCode, searchId: $searchId, searchType: $searchType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllSchedules &&
            (identical(other.universityCode, universityCode) ||
                other.universityCode == universityCode) &&
            (identical(other.searchId, searchId) ||
                other.searchId == searchId) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, universityCode, searchId, searchType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllSchedulesCopyWith<_$_GetAllSchedules> get copyWith =>
      __$$_GetAllSchedulesCopyWithImpl<_$_GetAllSchedules>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String universityCode, String searchId, String searchType)
        getAllSchedules,
    required TResult Function(
            String universityCode, String searchId, String searchType)
        getMySchedules,
  }) {
    return getAllSchedules(universityCode, searchId, searchType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String universityCode, String searchId, String searchType)?
        getAllSchedules,
    TResult? Function(
            String universityCode, String searchId, String searchType)?
        getMySchedules,
  }) {
    return getAllSchedules?.call(universityCode, searchId, searchType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode, String searchId, String searchType)?
        getAllSchedules,
    TResult Function(String universityCode, String searchId, String searchType)?
        getMySchedules,
    required TResult orElse(),
  }) {
    if (getAllSchedules != null) {
      return getAllSchedules(universityCode, searchId, searchType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSchedules value) getAllSchedules,
    required TResult Function(_GetMySchedules value) getMySchedules,
  }) {
    return getAllSchedules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllSchedules value)? getAllSchedules,
    TResult? Function(_GetMySchedules value)? getMySchedules,
  }) {
    return getAllSchedules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSchedules value)? getAllSchedules,
    TResult Function(_GetMySchedules value)? getMySchedules,
    required TResult orElse(),
  }) {
    if (getAllSchedules != null) {
      return getAllSchedules(this);
    }
    return orElse();
  }
}

abstract class _GetAllSchedules extends HomeApi {
  const factory _GetAllSchedules(final String universityCode,
      final String searchId, final String searchType) = _$_GetAllSchedules;
  const _GetAllSchedules._() : super._();

  @override
  String get universityCode;
  @override
  String get searchId;
  @override
  String get searchType;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllSchedulesCopyWith<_$_GetAllSchedules> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetMySchedulesCopyWith<$Res>
    implements $HomeApiCopyWith<$Res> {
  factory _$$_GetMySchedulesCopyWith(
          _$_GetMySchedules value, $Res Function(_$_GetMySchedules) then) =
      __$$_GetMySchedulesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String universityCode, String searchId, String searchType});
}

/// @nodoc
class __$$_GetMySchedulesCopyWithImpl<$Res>
    extends _$HomeApiCopyWithImpl<$Res, _$_GetMySchedules>
    implements _$$_GetMySchedulesCopyWith<$Res> {
  __$$_GetMySchedulesCopyWithImpl(
      _$_GetMySchedules _value, $Res Function(_$_GetMySchedules) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universityCode = null,
    Object? searchId = null,
    Object? searchType = null,
  }) {
    return _then(_$_GetMySchedules(
      null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == searchId
          ? _value.searchId
          : searchId // ignore: cast_nullable_to_non_nullable
              as String,
      null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMySchedules extends _GetMySchedules {
  const _$_GetMySchedules(this.universityCode, this.searchId, this.searchType)
      : super._();

  @override
  final String universityCode;
  @override
  final String searchId;
  @override
  final String searchType;

  @override
  String toString() {
    return 'HomeApi.getMySchedules(universityCode: $universityCode, searchId: $searchId, searchType: $searchType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMySchedules &&
            (identical(other.universityCode, universityCode) ||
                other.universityCode == universityCode) &&
            (identical(other.searchId, searchId) ||
                other.searchId == searchId) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, universityCode, searchId, searchType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMySchedulesCopyWith<_$_GetMySchedules> get copyWith =>
      __$$_GetMySchedulesCopyWithImpl<_$_GetMySchedules>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String universityCode, String searchId, String searchType)
        getAllSchedules,
    required TResult Function(
            String universityCode, String searchId, String searchType)
        getMySchedules,
  }) {
    return getMySchedules(universityCode, searchId, searchType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String universityCode, String searchId, String searchType)?
        getAllSchedules,
    TResult? Function(
            String universityCode, String searchId, String searchType)?
        getMySchedules,
  }) {
    return getMySchedules?.call(universityCode, searchId, searchType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode, String searchId, String searchType)?
        getAllSchedules,
    TResult Function(String universityCode, String searchId, String searchType)?
        getMySchedules,
    required TResult orElse(),
  }) {
    if (getMySchedules != null) {
      return getMySchedules(universityCode, searchId, searchType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSchedules value) getAllSchedules,
    required TResult Function(_GetMySchedules value) getMySchedules,
  }) {
    return getMySchedules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllSchedules value)? getAllSchedules,
    TResult? Function(_GetMySchedules value)? getMySchedules,
  }) {
    return getMySchedules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSchedules value)? getAllSchedules,
    TResult Function(_GetMySchedules value)? getMySchedules,
    required TResult orElse(),
  }) {
    if (getMySchedules != null) {
      return getMySchedules(this);
    }
    return orElse();
  }
}

abstract class _GetMySchedules extends HomeApi {
  const factory _GetMySchedules(final String universityCode,
      final String searchId, final String searchType) = _$_GetMySchedules;
  const _GetMySchedules._() : super._();

  @override
  String get universityCode;
  @override
  String get searchId;
  @override
  String get searchType;
  @override
  @JsonKey(ignore: true)
  _$$_GetMySchedulesCopyWith<_$_GetMySchedules> get copyWith =>
      throw _privateConstructorUsedError;
}
