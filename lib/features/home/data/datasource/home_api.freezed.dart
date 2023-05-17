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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) getAllSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? getAllSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? getAllSchedules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSchedules value) getAllSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllSchedules value)? getAllSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSchedules value)? getAllSchedules,
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
  $Res call({String universityCode});
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
abstract class _$$_GetAllSchedulesCopyWith<$Res>
    implements $HomeApiCopyWith<$Res> {
  factory _$$_GetAllSchedulesCopyWith(
          _$_GetAllSchedules value, $Res Function(_$_GetAllSchedules) then) =
      __$$_GetAllSchedulesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String universityCode});
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
  }) {
    return _then(_$_GetAllSchedules(
      null == universityCode
          ? _value.universityCode
          : universityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllSchedules extends _GetAllSchedules {
  const _$_GetAllSchedules(this.universityCode) : super._();

  @override
  final String universityCode;

  @override
  String toString() {
    return 'HomeApi.getAllSchedules(universityCode: $universityCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllSchedules &&
            (identical(other.universityCode, universityCode) ||
                other.universityCode == universityCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, universityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllSchedulesCopyWith<_$_GetAllSchedules> get copyWith =>
      __$$_GetAllSchedulesCopyWithImpl<_$_GetAllSchedules>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String universityCode) getAllSchedules,
  }) {
    return getAllSchedules(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String universityCode)? getAllSchedules,
  }) {
    return getAllSchedules?.call(universityCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String universityCode)? getAllSchedules,
    required TResult orElse(),
  }) {
    if (getAllSchedules != null) {
      return getAllSchedules(universityCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSchedules value) getAllSchedules,
  }) {
    return getAllSchedules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllSchedules value)? getAllSchedules,
  }) {
    return getAllSchedules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSchedules value)? getAllSchedules,
    required TResult orElse(),
  }) {
    if (getAllSchedules != null) {
      return getAllSchedules(this);
    }
    return orElse();
  }
}

abstract class _GetAllSchedules extends HomeApi {
  const factory _GetAllSchedules(final String universityCode) =
      _$_GetAllSchedules;
  const _GetAllSchedules._() : super._();

  @override
  String get universityCode;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllSchedulesCopyWith<_$_GetAllSchedules> get copyWith =>
      throw _privateConstructorUsedError;
}
