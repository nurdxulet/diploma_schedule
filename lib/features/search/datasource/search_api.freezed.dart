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
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getGroupSchedule,
    required TResult Function(String id) getSubjectSchedule,
    required TResult Function(String id) getTeacherSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getGroupSchedule,
    TResult? Function(String id)? getSubjectSchedule,
    TResult? Function(String id)? getTeacherSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getGroupSchedule,
    TResult Function(String id)? getSubjectSchedule,
    TResult Function(String id)? getTeacherSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupSchedule value) getGroupSchedule,
    required TResult Function(_GetSubjectSchedule value) getSubjectSchedule,
    required TResult Function(_GetTeacherSchedule value) getTeacherSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGroupSchedule value)? getGroupSchedule,
    TResult? Function(_GetSubjectSchedule value)? getSubjectSchedule,
    TResult? Function(_GetTeacherSchedule value)? getTeacherSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupSchedule value)? getGroupSchedule,
    TResult Function(_GetSubjectSchedule value)? getSubjectSchedule,
    TResult Function(_GetTeacherSchedule value)? getTeacherSchedule,
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
  $Res call({String id});
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
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetGroupScheduleCopyWith<$Res>
    implements $SearchApiCopyWith<$Res> {
  factory _$$_GetGroupScheduleCopyWith(
          _$_GetGroupSchedule value, $Res Function(_$_GetGroupSchedule) then) =
      __$$_GetGroupScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_GetGroupScheduleCopyWithImpl<$Res>
    extends _$SearchApiCopyWithImpl<$Res, _$_GetGroupSchedule>
    implements _$$_GetGroupScheduleCopyWith<$Res> {
  __$$_GetGroupScheduleCopyWithImpl(
      _$_GetGroupSchedule _value, $Res Function(_$_GetGroupSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetGroupSchedule(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetGroupSchedule extends _GetGroupSchedule {
  const _$_GetGroupSchedule(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'SearchApi.getGroupSchedule(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetGroupSchedule &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetGroupScheduleCopyWith<_$_GetGroupSchedule> get copyWith =>
      __$$_GetGroupScheduleCopyWithImpl<_$_GetGroupSchedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getGroupSchedule,
    required TResult Function(String id) getSubjectSchedule,
    required TResult Function(String id) getTeacherSchedule,
  }) {
    return getGroupSchedule(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getGroupSchedule,
    TResult? Function(String id)? getSubjectSchedule,
    TResult? Function(String id)? getTeacherSchedule,
  }) {
    return getGroupSchedule?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getGroupSchedule,
    TResult Function(String id)? getSubjectSchedule,
    TResult Function(String id)? getTeacherSchedule,
    required TResult orElse(),
  }) {
    if (getGroupSchedule != null) {
      return getGroupSchedule(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupSchedule value) getGroupSchedule,
    required TResult Function(_GetSubjectSchedule value) getSubjectSchedule,
    required TResult Function(_GetTeacherSchedule value) getTeacherSchedule,
  }) {
    return getGroupSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGroupSchedule value)? getGroupSchedule,
    TResult? Function(_GetSubjectSchedule value)? getSubjectSchedule,
    TResult? Function(_GetTeacherSchedule value)? getTeacherSchedule,
  }) {
    return getGroupSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupSchedule value)? getGroupSchedule,
    TResult Function(_GetSubjectSchedule value)? getSubjectSchedule,
    TResult Function(_GetTeacherSchedule value)? getTeacherSchedule,
    required TResult orElse(),
  }) {
    if (getGroupSchedule != null) {
      return getGroupSchedule(this);
    }
    return orElse();
  }
}

abstract class _GetGroupSchedule extends SearchApi {
  const factory _GetGroupSchedule(final String id) = _$_GetGroupSchedule;
  const _GetGroupSchedule._() : super._();

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_GetGroupScheduleCopyWith<_$_GetGroupSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSubjectScheduleCopyWith<$Res>
    implements $SearchApiCopyWith<$Res> {
  factory _$$_GetSubjectScheduleCopyWith(_$_GetSubjectSchedule value,
          $Res Function(_$_GetSubjectSchedule) then) =
      __$$_GetSubjectScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_GetSubjectScheduleCopyWithImpl<$Res>
    extends _$SearchApiCopyWithImpl<$Res, _$_GetSubjectSchedule>
    implements _$$_GetSubjectScheduleCopyWith<$Res> {
  __$$_GetSubjectScheduleCopyWithImpl(
      _$_GetSubjectSchedule _value, $Res Function(_$_GetSubjectSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetSubjectSchedule(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSubjectSchedule extends _GetSubjectSchedule {
  const _$_GetSubjectSchedule(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'SearchApi.getSubjectSchedule(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSubjectSchedule &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSubjectScheduleCopyWith<_$_GetSubjectSchedule> get copyWith =>
      __$$_GetSubjectScheduleCopyWithImpl<_$_GetSubjectSchedule>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getGroupSchedule,
    required TResult Function(String id) getSubjectSchedule,
    required TResult Function(String id) getTeacherSchedule,
  }) {
    return getSubjectSchedule(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getGroupSchedule,
    TResult? Function(String id)? getSubjectSchedule,
    TResult? Function(String id)? getTeacherSchedule,
  }) {
    return getSubjectSchedule?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getGroupSchedule,
    TResult Function(String id)? getSubjectSchedule,
    TResult Function(String id)? getTeacherSchedule,
    required TResult orElse(),
  }) {
    if (getSubjectSchedule != null) {
      return getSubjectSchedule(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupSchedule value) getGroupSchedule,
    required TResult Function(_GetSubjectSchedule value) getSubjectSchedule,
    required TResult Function(_GetTeacherSchedule value) getTeacherSchedule,
  }) {
    return getSubjectSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGroupSchedule value)? getGroupSchedule,
    TResult? Function(_GetSubjectSchedule value)? getSubjectSchedule,
    TResult? Function(_GetTeacherSchedule value)? getTeacherSchedule,
  }) {
    return getSubjectSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupSchedule value)? getGroupSchedule,
    TResult Function(_GetSubjectSchedule value)? getSubjectSchedule,
    TResult Function(_GetTeacherSchedule value)? getTeacherSchedule,
    required TResult orElse(),
  }) {
    if (getSubjectSchedule != null) {
      return getSubjectSchedule(this);
    }
    return orElse();
  }
}

abstract class _GetSubjectSchedule extends SearchApi {
  const factory _GetSubjectSchedule(final String id) = _$_GetSubjectSchedule;
  const _GetSubjectSchedule._() : super._();

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_GetSubjectScheduleCopyWith<_$_GetSubjectSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTeacherScheduleCopyWith<$Res>
    implements $SearchApiCopyWith<$Res> {
  factory _$$_GetTeacherScheduleCopyWith(_$_GetTeacherSchedule value,
          $Res Function(_$_GetTeacherSchedule) then) =
      __$$_GetTeacherScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_GetTeacherScheduleCopyWithImpl<$Res>
    extends _$SearchApiCopyWithImpl<$Res, _$_GetTeacherSchedule>
    implements _$$_GetTeacherScheduleCopyWith<$Res> {
  __$$_GetTeacherScheduleCopyWithImpl(
      _$_GetTeacherSchedule _value, $Res Function(_$_GetTeacherSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetTeacherSchedule(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTeacherSchedule extends _GetTeacherSchedule {
  const _$_GetTeacherSchedule(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'SearchApi.getTeacherSchedule(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTeacherSchedule &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTeacherScheduleCopyWith<_$_GetTeacherSchedule> get copyWith =>
      __$$_GetTeacherScheduleCopyWithImpl<_$_GetTeacherSchedule>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getGroupSchedule,
    required TResult Function(String id) getSubjectSchedule,
    required TResult Function(String id) getTeacherSchedule,
  }) {
    return getTeacherSchedule(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getGroupSchedule,
    TResult? Function(String id)? getSubjectSchedule,
    TResult? Function(String id)? getTeacherSchedule,
  }) {
    return getTeacherSchedule?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getGroupSchedule,
    TResult Function(String id)? getSubjectSchedule,
    TResult Function(String id)? getTeacherSchedule,
    required TResult orElse(),
  }) {
    if (getTeacherSchedule != null) {
      return getTeacherSchedule(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupSchedule value) getGroupSchedule,
    required TResult Function(_GetSubjectSchedule value) getSubjectSchedule,
    required TResult Function(_GetTeacherSchedule value) getTeacherSchedule,
  }) {
    return getTeacherSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGroupSchedule value)? getGroupSchedule,
    TResult? Function(_GetSubjectSchedule value)? getSubjectSchedule,
    TResult? Function(_GetTeacherSchedule value)? getTeacherSchedule,
  }) {
    return getTeacherSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupSchedule value)? getGroupSchedule,
    TResult Function(_GetSubjectSchedule value)? getSubjectSchedule,
    TResult Function(_GetTeacherSchedule value)? getTeacherSchedule,
    required TResult orElse(),
  }) {
    if (getTeacherSchedule != null) {
      return getTeacherSchedule(this);
    }
    return orElse();
  }
}

abstract class _GetTeacherSchedule extends SearchApi {
  const factory _GetTeacherSchedule(final String id) = _$_GetTeacherSchedule;
  const _GetTeacherSchedule._() : super._();

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_GetTeacherScheduleCopyWith<_$_GetTeacherSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
