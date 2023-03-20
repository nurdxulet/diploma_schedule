import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawer_item.freezed.dart';
// part 'drawer_iten.g.dart';

@freezed
class DrawerItem with _$DrawerItem {
  const factory DrawerItem({
    required String name,
    required List<DrawerItem> items,
    void Function()? onTap,
    bool? hasIcon,
  }) = _DrawerItem;
}
