// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDTO _$ScheduleDTOFromJson(Map<String, dynamic> json) {
  return _ScheduleDTO.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get sessionType => throw _privateConstructorUsedError;
  SubjectDTO? get subject => throw _privateConstructorUsedError;
  TeacherDTO? get teacher => throw _privateConstructorUsedError;
  List<GroupDTO>? get groups => throw _privateConstructorUsedError;
  RoomDTO? get room => throw _privateConstructorUsedError;
  String? get week => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDTOCopyWith<ScheduleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDTOCopyWith<$Res> {
  factory $ScheduleDTOCopyWith(
          ScheduleDTO value, $Res Function(ScheduleDTO) then) =
      _$ScheduleDTOCopyWithImpl<$Res, ScheduleDTO>;
  @useResult
  $Res call(
      {String? id,
      String? sessionType,
      SubjectDTO? subject,
      TeacherDTO? teacher,
      List<GroupDTO>? groups,
      RoomDTO? room,
      String? week,
      DateTime? startTime,
      DateTime? endTime});

  $SubjectDTOCopyWith<$Res>? get subject;
  $TeacherDTOCopyWith<$Res>? get teacher;
  $RoomDTOCopyWith<$Res>? get room;
}

/// @nodoc
class _$ScheduleDTOCopyWithImpl<$Res, $Val extends ScheduleDTO>
    implements $ScheduleDTOCopyWith<$Res> {
  _$ScheduleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionType = freezed,
    Object? subject = freezed,
    Object? teacher = freezed,
    Object? groups = freezed,
    Object? room = freezed,
    Object? week = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionType: freezed == sessionType
          ? _value.sessionType
          : sessionType // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectDTO?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as TeacherDTO?,
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupDTO>?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomDTO?,
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubjectDTOCopyWith<$Res>? get subject {
    if (_value.subject == null) {
      return null;
    }

    return $SubjectDTOCopyWith<$Res>(_value.subject!, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherDTOCopyWith<$Res>? get teacher {
    if (_value.teacher == null) {
      return null;
    }

    return $TeacherDTOCopyWith<$Res>(_value.teacher!, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomDTOCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomDTOCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduleDTOCopyWith<$Res>
    implements $ScheduleDTOCopyWith<$Res> {
  factory _$$_ScheduleDTOCopyWith(
          _$_ScheduleDTO value, $Res Function(_$_ScheduleDTO) then) =
      __$$_ScheduleDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? sessionType,
      SubjectDTO? subject,
      TeacherDTO? teacher,
      List<GroupDTO>? groups,
      RoomDTO? room,
      String? week,
      DateTime? startTime,
      DateTime? endTime});

  @override
  $SubjectDTOCopyWith<$Res>? get subject;
  @override
  $TeacherDTOCopyWith<$Res>? get teacher;
  @override
  $RoomDTOCopyWith<$Res>? get room;
}

/// @nodoc
class __$$_ScheduleDTOCopyWithImpl<$Res>
    extends _$ScheduleDTOCopyWithImpl<$Res, _$_ScheduleDTO>
    implements _$$_ScheduleDTOCopyWith<$Res> {
  __$$_ScheduleDTOCopyWithImpl(
      _$_ScheduleDTO _value, $Res Function(_$_ScheduleDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionType = freezed,
    Object? subject = freezed,
    Object? teacher = freezed,
    Object? groups = freezed,
    Object? room = freezed,
    Object? week = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$_ScheduleDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionType: freezed == sessionType
          ? _value.sessionType
          : sessionType // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectDTO?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as TeacherDTO?,
      groups: freezed == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupDTO>?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomDTO?,
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDTO implements _ScheduleDTO {
  const _$_ScheduleDTO(
      {this.id,
      this.sessionType,
      this.subject,
      this.teacher,
      final List<GroupDTO>? groups,
      this.room,
      this.week,
      this.startTime,
      this.endTime})
      : _groups = groups;

  factory _$_ScheduleDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? sessionType;
  @override
  final SubjectDTO? subject;
  @override
  final TeacherDTO? teacher;
  final List<GroupDTO>? _groups;
  @override
  List<GroupDTO>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RoomDTO? room;
  @override
  final String? week;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;

  @override
  String toString() {
    return 'ScheduleDTO(id: $id, sessionType: $sessionType, subject: $subject, teacher: $teacher, groups: $groups, room: $room, week: $week, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionType, sessionType) ||
                other.sessionType == sessionType) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sessionType,
      subject,
      teacher,
      const DeepCollectionEquality().hash(_groups),
      room,
      week,
      startTime,
      endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDTOCopyWith<_$_ScheduleDTO> get copyWith =>
      __$$_ScheduleDTOCopyWithImpl<_$_ScheduleDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDTOToJson(
      this,
    );
  }
}

abstract class _ScheduleDTO implements ScheduleDTO {
  const factory _ScheduleDTO(
      {final String? id,
      final String? sessionType,
      final SubjectDTO? subject,
      final TeacherDTO? teacher,
      final List<GroupDTO>? groups,
      final RoomDTO? room,
      final String? week,
      final DateTime? startTime,
      final DateTime? endTime}) = _$_ScheduleDTO;

  factory _ScheduleDTO.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDTO.fromJson;

  @override
  String? get id;
  @override
  String? get sessionType;
  @override
  SubjectDTO? get subject;
  @override
  TeacherDTO? get teacher;
  @override
  List<GroupDTO>? get groups;
  @override
  RoomDTO? get room;
  @override
  String? get week;
  @override
  DateTime? get startTime;
  @override
  DateTime? get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDTOCopyWith<_$_ScheduleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomDTO _$RoomDTOFromJson(Map<String, dynamic> json) {
  return _RoomDTO.fromJson(json);
}

/// @nodoc
mixin _$RoomDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get universityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomDTOCopyWith<RoomDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDTOCopyWith<$Res> {
  factory $RoomDTOCopyWith(RoomDTO value, $Res Function(RoomDTO) then) =
      _$RoomDTOCopyWithImpl<$Res, RoomDTO>;
  @useResult
  $Res call({String? id, String? name, String? universityId});
}

/// @nodoc
class _$RoomDTOCopyWithImpl<$Res, $Val extends RoomDTO>
    implements $RoomDTOCopyWith<$Res> {
  _$RoomDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? universityId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      universityId: freezed == universityId
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomDTOCopyWith<$Res> implements $RoomDTOCopyWith<$Res> {
  factory _$$_RoomDTOCopyWith(
          _$_RoomDTO value, $Res Function(_$_RoomDTO) then) =
      __$$_RoomDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? universityId});
}

/// @nodoc
class __$$_RoomDTOCopyWithImpl<$Res>
    extends _$RoomDTOCopyWithImpl<$Res, _$_RoomDTO>
    implements _$$_RoomDTOCopyWith<$Res> {
  __$$_RoomDTOCopyWithImpl(_$_RoomDTO _value, $Res Function(_$_RoomDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? universityId = freezed,
  }) {
    return _then(_$_RoomDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      universityId: freezed == universityId
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomDTO implements _RoomDTO {
  const _$_RoomDTO({this.id, this.name, this.universityId});

  factory _$_RoomDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RoomDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? universityId;

  @override
  String toString() {
    return 'RoomDTO(id: $id, name: $name, universityId: $universityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.universityId, universityId) ||
                other.universityId == universityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, universityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomDTOCopyWith<_$_RoomDTO> get copyWith =>
      __$$_RoomDTOCopyWithImpl<_$_RoomDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomDTOToJson(
      this,
    );
  }
}

abstract class _RoomDTO implements RoomDTO {
  const factory _RoomDTO(
      {final String? id,
      final String? name,
      final String? universityId}) = _$_RoomDTO;

  factory _RoomDTO.fromJson(Map<String, dynamic> json) = _$_RoomDTO.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get universityId;
  @override
  @JsonKey(ignore: true)
  _$$_RoomDTOCopyWith<_$_RoomDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
