import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';

class CustomDropdown<T> extends StatelessWidget {
  final Color? iconColor;
  final TextStyle? style;
  final EdgeInsets? itemPadding;
  final List<T> items;
  final T? selectedItem;
  final Function(T?)? onChanged;
  final bool? isExpanded;
  final BoxDecoration? buttonDecoration;
  final EdgeInsets? iconPadding;
  final double? buttonHeight;
  final BoxDecoration? dropdownDecoration;
  const CustomDropdown({
    super.key,
    required this.items,
    required this.selectedItem,
    this.onChanged,
    this.itemPadding,
    this.style,
    this.iconColor,
    this.isExpanded,
    this.buttonDecoration,
    this.iconPadding,
    this.buttonHeight,
    this.dropdownDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        buttonHeight: buttonHeight,
        buttonDecoration: buttonDecoration,
        isExpanded: isExpanded ?? false,
        items: items
            .map(
              (item) => DropdownMenuItem(
                value: item,
                child: Text(
                  item.toString(),
                  style: style ?? AppTextStyles.m16w400,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
            .toList(),
        value: selectedItem as T,
        itemPadding: itemPadding ??
            const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
        dropdownDecoration: dropdownDecoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.kPurple4,
            ),
        onChanged: onChanged,
        icon: Padding(
          padding: iconPadding ?? EdgeInsets.zero,
          child: SvgPicture.asset(
            Assets.icons.icArrowDown.path,
            colorFilter: ColorFilter.mode(
              iconColor ?? AppColors.kGrey,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
