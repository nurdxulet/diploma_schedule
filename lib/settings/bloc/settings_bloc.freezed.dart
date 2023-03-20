// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsState {
  SettingsData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) idle,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) updatedSuccessfully,
    required TResult Function(SettingsData data, String description) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? idle,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? updatedSuccessfully,
    TResult? Function(SettingsData data, String description)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? idle,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? updatedSuccessfully,
    TResult Function(SettingsData data, String description)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStateIdle value) idle,
    required TResult Function(SettingsStateLoading value) loading,
    required TResult Function(SettingsStateUpdatedSuccessfully value)
        updatedSuccessfully,
    required TResult Function(SettingsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateIdle value)? idle,
    TResult? Function(SettingsStateLoading value)? loading,
    TResult? Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult? Function(SettingsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStateIdle value)? idle,
    TResult Function(SettingsStateLoading value)? loading,
    TResult Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult Function(SettingsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({SettingsData data});

  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsDataCopyWith<$Res> get data {
    return $SettingsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateIdleCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateIdleCopyWith(
          _$SettingsStateIdle value, $Res Function(_$SettingsStateIdle) then) =
      __$$SettingsStateIdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsStateIdleCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateIdle>
    implements _$$SettingsStateIdleCopyWith<$Res> {
  __$$SettingsStateIdleCopyWithImpl(
      _$SettingsStateIdle _value, $Res Function(_$SettingsStateIdle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SettingsStateIdle(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ));
  }
}

/// @nodoc

class _$SettingsStateIdle implements SettingsStateIdle {
  const _$SettingsStateIdle({required this.data});

  @override
  final SettingsData data;

  @override
  String toString() {
    return 'SettingsState.idle(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateIdle &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateIdleCopyWith<_$SettingsStateIdle> get copyWith =>
      __$$SettingsStateIdleCopyWithImpl<_$SettingsStateIdle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) idle,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) updatedSuccessfully,
    required TResult Function(SettingsData data, String description) error,
  }) {
    return idle(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? idle,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? updatedSuccessfully,
    TResult? Function(SettingsData data, String description)? error,
  }) {
    return idle?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? idle,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? updatedSuccessfully,
    TResult Function(SettingsData data, String description)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStateIdle value) idle,
    required TResult Function(SettingsStateLoading value) loading,
    required TResult Function(SettingsStateUpdatedSuccessfully value)
        updatedSuccessfully,
    required TResult Function(SettingsStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateIdle value)? idle,
    TResult? Function(SettingsStateLoading value)? loading,
    TResult? Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult? Function(SettingsStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStateIdle value)? idle,
    TResult Function(SettingsStateLoading value)? loading,
    TResult Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult Function(SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class SettingsStateIdle implements SettingsState {
  const factory SettingsStateIdle({required final SettingsData data}) =
      _$SettingsStateIdle;

  @override
  SettingsData get data;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateIdleCopyWith<_$SettingsStateIdle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsStateLoadingCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateLoadingCopyWith(_$SettingsStateLoading value,
          $Res Function(_$SettingsStateLoading) then) =
      __$$SettingsStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsStateLoadingCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateLoading>
    implements _$$SettingsStateLoadingCopyWith<$Res> {
  __$$SettingsStateLoadingCopyWithImpl(_$SettingsStateLoading _value,
      $Res Function(_$SettingsStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SettingsStateLoading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ));
  }
}

/// @nodoc

class _$SettingsStateLoading implements SettingsStateLoading {
  const _$SettingsStateLoading({required this.data});

  @override
  final SettingsData data;

  @override
  String toString() {
    return 'SettingsState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateLoading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateLoadingCopyWith<_$SettingsStateLoading> get copyWith =>
      __$$SettingsStateLoadingCopyWithImpl<_$SettingsStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) idle,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) updatedSuccessfully,
    required TResult Function(SettingsData data, String description) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? idle,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? updatedSuccessfully,
    TResult? Function(SettingsData data, String description)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? idle,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? updatedSuccessfully,
    TResult Function(SettingsData data, String description)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStateIdle value) idle,
    required TResult Function(SettingsStateLoading value) loading,
    required TResult Function(SettingsStateUpdatedSuccessfully value)
        updatedSuccessfully,
    required TResult Function(SettingsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateIdle value)? idle,
    TResult? Function(SettingsStateLoading value)? loading,
    TResult? Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult? Function(SettingsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStateIdle value)? idle,
    TResult Function(SettingsStateLoading value)? loading,
    TResult Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult Function(SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SettingsStateLoading implements SettingsState {
  const factory SettingsStateLoading({required final SettingsData data}) =
      _$SettingsStateLoading;

  @override
  SettingsData get data;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateLoadingCopyWith<_$SettingsStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsStateUpdatedSuccessfullyCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateUpdatedSuccessfullyCopyWith(
          _$SettingsStateUpdatedSuccessfully value,
          $Res Function(_$SettingsStateUpdatedSuccessfully) then) =
      __$$SettingsStateUpdatedSuccessfullyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsStateUpdatedSuccessfullyCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res,
        _$SettingsStateUpdatedSuccessfully>
    implements _$$SettingsStateUpdatedSuccessfullyCopyWith<$Res> {
  __$$SettingsStateUpdatedSuccessfullyCopyWithImpl(
      _$SettingsStateUpdatedSuccessfully _value,
      $Res Function(_$SettingsStateUpdatedSuccessfully) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SettingsStateUpdatedSuccessfully(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ));
  }
}

/// @nodoc

class _$SettingsStateUpdatedSuccessfully
    implements SettingsStateUpdatedSuccessfully {
  const _$SettingsStateUpdatedSuccessfully({required this.data});

  @override
  final SettingsData data;

  @override
  String toString() {
    return 'SettingsState.updatedSuccessfully(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateUpdatedSuccessfully &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateUpdatedSuccessfullyCopyWith<
          _$SettingsStateUpdatedSuccessfully>
      get copyWith => __$$SettingsStateUpdatedSuccessfullyCopyWithImpl<
          _$SettingsStateUpdatedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) idle,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) updatedSuccessfully,
    required TResult Function(SettingsData data, String description) error,
  }) {
    return updatedSuccessfully(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? idle,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? updatedSuccessfully,
    TResult? Function(SettingsData data, String description)? error,
  }) {
    return updatedSuccessfully?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? idle,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? updatedSuccessfully,
    TResult Function(SettingsData data, String description)? error,
    required TResult orElse(),
  }) {
    if (updatedSuccessfully != null) {
      return updatedSuccessfully(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStateIdle value) idle,
    required TResult Function(SettingsStateLoading value) loading,
    required TResult Function(SettingsStateUpdatedSuccessfully value)
        updatedSuccessfully,
    required TResult Function(SettingsStateError value) error,
  }) {
    return updatedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateIdle value)? idle,
    TResult? Function(SettingsStateLoading value)? loading,
    TResult? Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult? Function(SettingsStateError value)? error,
  }) {
    return updatedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStateIdle value)? idle,
    TResult Function(SettingsStateLoading value)? loading,
    TResult Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult Function(SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (updatedSuccessfully != null) {
      return updatedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class SettingsStateUpdatedSuccessfully implements SettingsState {
  const factory SettingsStateUpdatedSuccessfully(
      {required final SettingsData data}) = _$SettingsStateUpdatedSuccessfully;

  @override
  SettingsData get data;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateUpdatedSuccessfullyCopyWith<
          _$SettingsStateUpdatedSuccessfully>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsStateErrorCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateErrorCopyWith(_$SettingsStateError value,
          $Res Function(_$SettingsStateError) then) =
      __$$SettingsStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data, String description});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsStateErrorCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateError>
    implements _$$SettingsStateErrorCopyWith<$Res> {
  __$$SettingsStateErrorCopyWithImpl(
      _$SettingsStateError _value, $Res Function(_$SettingsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? description = null,
  }) {
    return _then(_$SettingsStateError(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingsStateError implements SettingsStateError {
  const _$SettingsStateError({required this.data, required this.description});

  @override
  final SettingsData data;
  @override
  final String description;

  @override
  String toString() {
    return 'SettingsState.error(data: $data, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateError &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateErrorCopyWith<_$SettingsStateError> get copyWith =>
      __$$SettingsStateErrorCopyWithImpl<_$SettingsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) idle,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) updatedSuccessfully,
    required TResult Function(SettingsData data, String description) error,
  }) {
    return error(data, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? idle,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? updatedSuccessfully,
    TResult? Function(SettingsData data, String description)? error,
  }) {
    return error?.call(data, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? idle,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? updatedSuccessfully,
    TResult Function(SettingsData data, String description)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStateIdle value) idle,
    required TResult Function(SettingsStateLoading value) loading,
    required TResult Function(SettingsStateUpdatedSuccessfully value)
        updatedSuccessfully,
    required TResult Function(SettingsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateIdle value)? idle,
    TResult? Function(SettingsStateLoading value)? loading,
    TResult? Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult? Function(SettingsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStateIdle value)? idle,
    TResult Function(SettingsStateLoading value)? loading,
    TResult Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult Function(SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SettingsStateError implements SettingsState {
  const factory SettingsStateError(
      {required final SettingsData data,
      required final String description}) = _$SettingsStateError;

  @override
  SettingsData get data;
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateErrorCopyWith<_$SettingsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme) setTheme,
    required TResult Function(AppLanguage locale) setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTheme theme)? setTheme,
    TResult? Function(AppLanguage locale)? setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme)? setTheme,
    TResult Function(AppLanguage locale)? setLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventSetTheme value) setTheme,
    required TResult Function(_SettingsEventSetLocale value) setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventSetTheme value)? setTheme,
    TResult? Function(_SettingsEventSetLocale value)? setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventSetTheme value)? setTheme,
    TResult Function(_SettingsEventSetLocale value)? setLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SettingsEventSetThemeCopyWith<$Res> {
  factory _$$_SettingsEventSetThemeCopyWith(_$_SettingsEventSetTheme value,
          $Res Function(_$_SettingsEventSetTheme) then) =
      __$$_SettingsEventSetThemeCopyWithImpl<$Res>;
  @useResult
  $Res call({AppTheme theme});
}

/// @nodoc
class __$$_SettingsEventSetThemeCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_SettingsEventSetTheme>
    implements _$$_SettingsEventSetThemeCopyWith<$Res> {
  __$$_SettingsEventSetThemeCopyWithImpl(_$_SettingsEventSetTheme _value,
      $Res Function(_$_SettingsEventSetTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$_SettingsEventSetTheme(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

/// @nodoc

class _$_SettingsEventSetTheme implements _SettingsEventSetTheme {
  const _$_SettingsEventSetTheme({required this.theme});

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'SettingsEvent.setTheme(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsEventSetTheme &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsEventSetThemeCopyWith<_$_SettingsEventSetTheme> get copyWith =>
      __$$_SettingsEventSetThemeCopyWithImpl<_$_SettingsEventSetTheme>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme) setTheme,
    required TResult Function(AppLanguage locale) setLocale,
  }) {
    return setTheme(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTheme theme)? setTheme,
    TResult? Function(AppLanguage locale)? setLocale,
  }) {
    return setTheme?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme)? setTheme,
    TResult Function(AppLanguage locale)? setLocale,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventSetTheme value) setTheme,
    required TResult Function(_SettingsEventSetLocale value) setLocale,
  }) {
    return setTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventSetTheme value)? setTheme,
    TResult? Function(_SettingsEventSetLocale value)? setLocale,
  }) {
    return setTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventSetTheme value)? setTheme,
    TResult Function(_SettingsEventSetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventSetTheme implements SettingsEvent {
  const factory _SettingsEventSetTheme({required final AppTheme theme}) =
      _$_SettingsEventSetTheme;

  AppTheme get theme;
  @JsonKey(ignore: true)
  _$$_SettingsEventSetThemeCopyWith<_$_SettingsEventSetTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SettingsEventSetLocaleCopyWith<$Res> {
  factory _$$_SettingsEventSetLocaleCopyWith(_$_SettingsEventSetLocale value,
          $Res Function(_$_SettingsEventSetLocale) then) =
      __$$_SettingsEventSetLocaleCopyWithImpl<$Res>;
  @useResult
  $Res call({AppLanguage locale});
}

/// @nodoc
class __$$_SettingsEventSetLocaleCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_SettingsEventSetLocale>
    implements _$$_SettingsEventSetLocaleCopyWith<$Res> {
  __$$_SettingsEventSetLocaleCopyWithImpl(_$_SettingsEventSetLocale _value,
      $Res Function(_$_SettingsEventSetLocale) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$_SettingsEventSetLocale(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
    ));
  }
}

/// @nodoc

class _$_SettingsEventSetLocale implements _SettingsEventSetLocale {
  const _$_SettingsEventSetLocale({required this.locale});

  @override
  final AppLanguage locale;

  @override
  String toString() {
    return 'SettingsEvent.setLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsEventSetLocale &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsEventSetLocaleCopyWith<_$_SettingsEventSetLocale> get copyWith =>
      __$$_SettingsEventSetLocaleCopyWithImpl<_$_SettingsEventSetLocale>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme) setTheme,
    required TResult Function(AppLanguage locale) setLocale,
  }) {
    return setLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTheme theme)? setTheme,
    TResult? Function(AppLanguage locale)? setLocale,
  }) {
    return setLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme)? setTheme,
    TResult Function(AppLanguage locale)? setLocale,
    required TResult orElse(),
  }) {
    if (setLocale != null) {
      return setLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventSetTheme value) setTheme,
    required TResult Function(_SettingsEventSetLocale value) setLocale,
  }) {
    return setLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventSetTheme value)? setTheme,
    TResult? Function(_SettingsEventSetLocale value)? setLocale,
  }) {
    return setLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventSetTheme value)? setTheme,
    TResult Function(_SettingsEventSetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (setLocale != null) {
      return setLocale(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventSetLocale implements SettingsEvent {
  const factory _SettingsEventSetLocale({required final AppLanguage locale}) =
      _$_SettingsEventSetLocale;

  AppLanguage get locale;
  @JsonKey(ignore: true)
  _$$_SettingsEventSetLocaleCopyWith<_$_SettingsEventSetLocale> get copyWith =>
      throw _privateConstructorUsedError;
}
