// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseEvent {
  int get index => throw _privateConstructorUsedError;
  void Function()? get action => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, void Function()? action)
        setActiveIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, void Function()? action)? setActiveIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, void Function()? action)? setActiveIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetActiveIndexEvent value) setActiveIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetActiveIndexEvent value)? setActiveIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetActiveIndexEvent value)? setActiveIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseEventCopyWith<BaseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseEventCopyWith<$Res> {
  factory $BaseEventCopyWith(BaseEvent value, $Res Function(BaseEvent) then) =
      _$BaseEventCopyWithImpl<$Res, BaseEvent>;
  @useResult
  $Res call({int index, void Function()? action});
}

/// @nodoc
class _$BaseEventCopyWithImpl<$Res, $Val extends BaseEvent>
    implements $BaseEventCopyWith<$Res> {
  _$BaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetActiveIndexEventCopyWith<$Res>
    implements $BaseEventCopyWith<$Res> {
  factory _$$_SetActiveIndexEventCopyWith(_$_SetActiveIndexEvent value,
          $Res Function(_$_SetActiveIndexEvent) then) =
      __$$_SetActiveIndexEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, void Function()? action});
}

/// @nodoc
class __$$_SetActiveIndexEventCopyWithImpl<$Res>
    extends _$BaseEventCopyWithImpl<$Res, _$_SetActiveIndexEvent>
    implements _$$_SetActiveIndexEventCopyWith<$Res> {
  __$$_SetActiveIndexEventCopyWithImpl(_$_SetActiveIndexEvent _value,
      $Res Function(_$_SetActiveIndexEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? action = freezed,
  }) {
    return _then(_$_SetActiveIndexEvent(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$_SetActiveIndexEvent implements _SetActiveIndexEvent {
  const _$_SetActiveIndexEvent({required this.index, this.action});

  @override
  final int index;
  @override
  final void Function()? action;

  @override
  String toString() {
    return 'BaseEvent.setActiveIndex(index: $index, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetActiveIndexEvent &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetActiveIndexEventCopyWith<_$_SetActiveIndexEvent> get copyWith =>
      __$$_SetActiveIndexEventCopyWithImpl<_$_SetActiveIndexEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, void Function()? action)
        setActiveIndex,
  }) {
    return setActiveIndex(index, action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, void Function()? action)? setActiveIndex,
  }) {
    return setActiveIndex?.call(index, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, void Function()? action)? setActiveIndex,
    required TResult orElse(),
  }) {
    if (setActiveIndex != null) {
      return setActiveIndex(index, action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetActiveIndexEvent value) setActiveIndex,
  }) {
    return setActiveIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetActiveIndexEvent value)? setActiveIndex,
  }) {
    return setActiveIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetActiveIndexEvent value)? setActiveIndex,
    required TResult orElse(),
  }) {
    if (setActiveIndex != null) {
      return setActiveIndex(this);
    }
    return orElse();
  }
}

abstract class _SetActiveIndexEvent implements BaseEvent {
  const factory _SetActiveIndexEvent(
      {required final int index,
      final void Function()? action}) = _$_SetActiveIndexEvent;

  @override
  int get index;
  @override
  void Function()? get action;
  @override
  @JsonKey(ignore: true)
  _$$_SetActiveIndexEventCopyWith<_$_SetActiveIndexEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initalState,
    required TResult Function(int index, void Function()? action) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initalState,
    TResult? Function(int index, void Function()? action)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initalState,
    TResult Function(int index, void Function()? action)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initalState,
    required TResult Function(_LoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initalState,
    TResult? Function(_LoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initalState,
    TResult Function(_LoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<$Res> {
  factory $BaseStateCopyWith(BaseState value, $Res Function(BaseState) then) =
      _$BaseStateCopyWithImpl<$Res, BaseState>;
}

/// @nodoc
class _$BaseStateCopyWithImpl<$Res, $Val extends BaseState>
    implements $BaseStateCopyWith<$Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'BaseState.initalState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initalState,
    required TResult Function(int index, void Function()? action) loadedState,
  }) {
    return initalState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initalState,
    TResult? Function(int index, void Function()? action)? loadedState,
  }) {
    return initalState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initalState,
    TResult Function(int index, void Function()? action)? loadedState,
    required TResult orElse(),
  }) {
    if (initalState != null) {
      return initalState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initalState,
    required TResult Function(_LoadedState value) loadedState,
  }) {
    return initalState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initalState,
    TResult? Function(_LoadedState value)? loadedState,
  }) {
    return initalState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initalState,
    TResult Function(_LoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initalState != null) {
      return initalState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements BaseState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, void Function()? action});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? action = freezed,
  }) {
    return _then(_$_LoadedState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$_LoadedState implements _LoadedState {
  const _$_LoadedState({required this.index, this.action});

  @override
  final int index;
  @override
  final void Function()? action;

  @override
  String toString() {
    return 'BaseState.loadedState(index: $index, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initalState,
    required TResult Function(int index, void Function()? action) loadedState,
  }) {
    return loadedState(index, action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initalState,
    TResult? Function(int index, void Function()? action)? loadedState,
  }) {
    return loadedState?.call(index, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initalState,
    TResult Function(int index, void Function()? action)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(index, action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initalState,
    required TResult Function(_LoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initalState,
    TResult? Function(_LoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initalState,
    TResult Function(_LoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements BaseState {
  const factory _LoadedState(
      {required final int index,
      final void Function()? action}) = _$_LoadedState;

  int get index;
  void Function()? get action;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
