// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<GroupDTO> groups) loadedGroupsState,
    required TResult Function(List<TeacherDTO> teachers) loadedTeachersState,
    required TResult Function(List<RoomDTO> rooms) loadedRoomsState,
    required TResult Function(String message) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult? Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult? Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult? Function(String message)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedGroupsState value) loadedGroupsState,
    required TResult Function(_LoadedTeachersState value) loadedTeachersState,
    required TResult Function(_LoadedRoomsState value) loadedRoomsState,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult? Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult? Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

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
    extends _$SearchStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'SearchState.initialState()';
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
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<GroupDTO> groups) loadedGroupsState,
    required TResult Function(List<TeacherDTO> teachers) loadedTeachersState,
    required TResult Function(List<RoomDTO> rooms) loadedRoomsState,
    required TResult Function(String message) errorState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult? Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult? Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult? Function(String message)? errorState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedGroupsState value) loadedGroupsState,
    required TResult Function(_LoadedTeachersState value) loadedTeachersState,
    required TResult Function(_LoadedRoomsState value) loadedRoomsState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult? Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult? Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements SearchState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'SearchState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<GroupDTO> groups) loadedGroupsState,
    required TResult Function(List<TeacherDTO> teachers) loadedTeachersState,
    required TResult Function(List<RoomDTO> rooms) loadedRoomsState,
    required TResult Function(String message) errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult? Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult? Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult? Function(String message)? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedGroupsState value) loadedGroupsState,
    required TResult Function(_LoadedTeachersState value) loadedTeachersState,
    required TResult Function(_LoadedRoomsState value) loadedRoomsState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult? Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult? Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements SearchState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_LoadedGroupsStateCopyWith<$Res> {
  factory _$$_LoadedGroupsStateCopyWith(_$_LoadedGroupsState value,
          $Res Function(_$_LoadedGroupsState) then) =
      __$$_LoadedGroupsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupDTO> groups});
}

/// @nodoc
class __$$_LoadedGroupsStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_LoadedGroupsState>
    implements _$$_LoadedGroupsStateCopyWith<$Res> {
  __$$_LoadedGroupsStateCopyWithImpl(
      _$_LoadedGroupsState _value, $Res Function(_$_LoadedGroupsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$_LoadedGroupsState(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupDTO>,
    ));
  }
}

/// @nodoc

class _$_LoadedGroupsState implements _LoadedGroupsState {
  const _$_LoadedGroupsState({required final List<GroupDTO> groups})
      : _groups = groups;

  final List<GroupDTO> _groups;
  @override
  List<GroupDTO> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'SearchState.loadedGroupsState(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedGroupsState &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedGroupsStateCopyWith<_$_LoadedGroupsState> get copyWith =>
      __$$_LoadedGroupsStateCopyWithImpl<_$_LoadedGroupsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<GroupDTO> groups) loadedGroupsState,
    required TResult Function(List<TeacherDTO> teachers) loadedTeachersState,
    required TResult Function(List<RoomDTO> rooms) loadedRoomsState,
    required TResult Function(String message) errorState,
  }) {
    return loadedGroupsState(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult? Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult? Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult? Function(String message)? errorState,
  }) {
    return loadedGroupsState?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loadedGroupsState != null) {
      return loadedGroupsState(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedGroupsState value) loadedGroupsState,
    required TResult Function(_LoadedTeachersState value) loadedTeachersState,
    required TResult Function(_LoadedRoomsState value) loadedRoomsState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadedGroupsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult? Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult? Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadedGroupsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadedGroupsState != null) {
      return loadedGroupsState(this);
    }
    return orElse();
  }
}

abstract class _LoadedGroupsState implements SearchState {
  const factory _LoadedGroupsState({required final List<GroupDTO> groups}) =
      _$_LoadedGroupsState;

  List<GroupDTO> get groups;
  @JsonKey(ignore: true)
  _$$_LoadedGroupsStateCopyWith<_$_LoadedGroupsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedTeachersStateCopyWith<$Res> {
  factory _$$_LoadedTeachersStateCopyWith(_$_LoadedTeachersState value,
          $Res Function(_$_LoadedTeachersState) then) =
      __$$_LoadedTeachersStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TeacherDTO> teachers});
}

/// @nodoc
class __$$_LoadedTeachersStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_LoadedTeachersState>
    implements _$$_LoadedTeachersStateCopyWith<$Res> {
  __$$_LoadedTeachersStateCopyWithImpl(_$_LoadedTeachersState _value,
      $Res Function(_$_LoadedTeachersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachers = null,
  }) {
    return _then(_$_LoadedTeachersState(
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherDTO>,
    ));
  }
}

/// @nodoc

class _$_LoadedTeachersState implements _LoadedTeachersState {
  const _$_LoadedTeachersState({required final List<TeacherDTO> teachers})
      : _teachers = teachers;

  final List<TeacherDTO> _teachers;
  @override
  List<TeacherDTO> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  String toString() {
    return 'SearchState.loadedTeachersState(teachers: $teachers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedTeachersState &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_teachers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedTeachersStateCopyWith<_$_LoadedTeachersState> get copyWith =>
      __$$_LoadedTeachersStateCopyWithImpl<_$_LoadedTeachersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<GroupDTO> groups) loadedGroupsState,
    required TResult Function(List<TeacherDTO> teachers) loadedTeachersState,
    required TResult Function(List<RoomDTO> rooms) loadedRoomsState,
    required TResult Function(String message) errorState,
  }) {
    return loadedTeachersState(teachers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult? Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult? Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult? Function(String message)? errorState,
  }) {
    return loadedTeachersState?.call(teachers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loadedTeachersState != null) {
      return loadedTeachersState(teachers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedGroupsState value) loadedGroupsState,
    required TResult Function(_LoadedTeachersState value) loadedTeachersState,
    required TResult Function(_LoadedRoomsState value) loadedRoomsState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadedTeachersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult? Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult? Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadedTeachersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadedTeachersState != null) {
      return loadedTeachersState(this);
    }
    return orElse();
  }
}

abstract class _LoadedTeachersState implements SearchState {
  const factory _LoadedTeachersState(
      {required final List<TeacherDTO> teachers}) = _$_LoadedTeachersState;

  List<TeacherDTO> get teachers;
  @JsonKey(ignore: true)
  _$$_LoadedTeachersStateCopyWith<_$_LoadedTeachersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedRoomsStateCopyWith<$Res> {
  factory _$$_LoadedRoomsStateCopyWith(
          _$_LoadedRoomsState value, $Res Function(_$_LoadedRoomsState) then) =
      __$$_LoadedRoomsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomDTO> rooms});
}

/// @nodoc
class __$$_LoadedRoomsStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_LoadedRoomsState>
    implements _$$_LoadedRoomsStateCopyWith<$Res> {
  __$$_LoadedRoomsStateCopyWithImpl(
      _$_LoadedRoomsState _value, $Res Function(_$_LoadedRoomsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$_LoadedRoomsState(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomDTO>,
    ));
  }
}

/// @nodoc

class _$_LoadedRoomsState implements _LoadedRoomsState {
  const _$_LoadedRoomsState({required final List<RoomDTO> rooms})
      : _rooms = rooms;

  final List<RoomDTO> _rooms;
  @override
  List<RoomDTO> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'SearchState.loadedRoomsState(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedRoomsState &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedRoomsStateCopyWith<_$_LoadedRoomsState> get copyWith =>
      __$$_LoadedRoomsStateCopyWithImpl<_$_LoadedRoomsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<GroupDTO> groups) loadedGroupsState,
    required TResult Function(List<TeacherDTO> teachers) loadedTeachersState,
    required TResult Function(List<RoomDTO> rooms) loadedRoomsState,
    required TResult Function(String message) errorState,
  }) {
    return loadedRoomsState(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult? Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult? Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult? Function(String message)? errorState,
  }) {
    return loadedRoomsState?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loadedRoomsState != null) {
      return loadedRoomsState(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedGroupsState value) loadedGroupsState,
    required TResult Function(_LoadedTeachersState value) loadedTeachersState,
    required TResult Function(_LoadedRoomsState value) loadedRoomsState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadedRoomsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult? Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult? Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadedRoomsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadedRoomsState != null) {
      return loadedRoomsState(this);
    }
    return orElse();
  }
}

abstract class _LoadedRoomsState implements SearchState {
  const factory _LoadedRoomsState({required final List<RoomDTO> rooms}) =
      _$_LoadedRoomsState;

  List<RoomDTO> get rooms;
  @JsonKey(ignore: true)
  _$$_LoadedRoomsStateCopyWith<_$_LoadedRoomsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.errorState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<GroupDTO> groups) loadedGroupsState,
    required TResult Function(List<TeacherDTO> teachers) loadedTeachersState,
    required TResult Function(List<RoomDTO> rooms) loadedRoomsState,
    required TResult Function(String message) errorState,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult? Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult? Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult? Function(String message)? errorState,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<GroupDTO> groups)? loadedGroupsState,
    TResult Function(List<TeacherDTO> teachers)? loadedTeachersState,
    TResult Function(List<RoomDTO> rooms)? loadedRoomsState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoadedGroupsState value) loadedGroupsState,
    required TResult Function(_LoadedTeachersState value) loadedTeachersState,
    required TResult Function(_LoadedRoomsState value) loadedRoomsState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult? Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult? Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoadedGroupsState value)? loadedGroupsState,
    TResult Function(_LoadedTeachersState value)? loadedTeachersState,
    TResult Function(_LoadedRoomsState value)? loadedRoomsState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements SearchState {
  const factory _ErrorState({required final String message}) = _$_ErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
