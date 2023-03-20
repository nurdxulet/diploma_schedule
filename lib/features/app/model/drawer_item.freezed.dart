// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawerItem {
  String get name => throw _privateConstructorUsedError;
  List<DrawerItem> get items => throw _privateConstructorUsedError;
  void Function()? get onTap => throw _privateConstructorUsedError;
  bool? get hasIcon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawerItemCopyWith<DrawerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerItemCopyWith<$Res> {
  factory $DrawerItemCopyWith(
          DrawerItem value, $Res Function(DrawerItem) then) =
      _$DrawerItemCopyWithImpl<$Res, DrawerItem>;
  @useResult
  $Res call(
      {String name,
      List<DrawerItem> items,
      void Function()? onTap,
      bool? hasIcon});
}

/// @nodoc
class _$DrawerItemCopyWithImpl<$Res, $Val extends DrawerItem>
    implements $DrawerItemCopyWith<$Res> {
  _$DrawerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
    Object? onTap = freezed,
    Object? hasIcon = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DrawerItem>,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as void Function()?,
      hasIcon: freezed == hasIcon
          ? _value.hasIcon
          : hasIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrawerItemCopyWith<$Res>
    implements $DrawerItemCopyWith<$Res> {
  factory _$$_DrawerItemCopyWith(
          _$_DrawerItem value, $Res Function(_$_DrawerItem) then) =
      __$$_DrawerItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<DrawerItem> items,
      void Function()? onTap,
      bool? hasIcon});
}

/// @nodoc
class __$$_DrawerItemCopyWithImpl<$Res>
    extends _$DrawerItemCopyWithImpl<$Res, _$_DrawerItem>
    implements _$$_DrawerItemCopyWith<$Res> {
  __$$_DrawerItemCopyWithImpl(
      _$_DrawerItem _value, $Res Function(_$_DrawerItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
    Object? onTap = freezed,
    Object? hasIcon = freezed,
  }) {
    return _then(_$_DrawerItem(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DrawerItem>,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as void Function()?,
      hasIcon: freezed == hasIcon
          ? _value.hasIcon
          : hasIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_DrawerItem implements _DrawerItem {
  const _$_DrawerItem(
      {required this.name,
      required final List<DrawerItem> items,
      this.onTap,
      this.hasIcon})
      : _items = items;

  @override
  final String name;
  final List<DrawerItem> _items;
  @override
  List<DrawerItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final void Function()? onTap;
  @override
  final bool? hasIcon;

  @override
  String toString() {
    return 'DrawerItem(name: $name, items: $items, onTap: $onTap, hasIcon: $hasIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawerItem &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.hasIcon, hasIcon) || other.hasIcon == hasIcon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_items), onTap, hasIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrawerItemCopyWith<_$_DrawerItem> get copyWith =>
      __$$_DrawerItemCopyWithImpl<_$_DrawerItem>(this, _$identity);
}

abstract class _DrawerItem implements DrawerItem {
  const factory _DrawerItem(
      {required final String name,
      required final List<DrawerItem> items,
      final void Function()? onTap,
      final bool? hasIcon}) = _$_DrawerItem;

  @override
  String get name;
  @override
  List<DrawerItem> get items;
  @override
  void Function()? get onTap;
  @override
  bool? get hasIcon;
  @override
  @JsonKey(ignore: true)
  _$$_DrawerItemCopyWith<_$_DrawerItem> get copyWith =>
      throw _privateConstructorUsedError;
}
