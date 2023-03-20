import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule/core/resources/resources.dart';

class CustomSquareButton extends StatelessWidget {
  final double? size;
  final Color? backgroundColor;
  final Color? iconColor;
  final Function()? onTap;
  final String iconPath;
  final EdgeInsets? iconPadding;
  const CustomSquareButton({
    super.key,
    this.onTap,
    required this.iconPath,
    this.iconPadding,
    this.size,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 40,
      width: size ?? 40,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 11,
            spreadRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Padding(
            padding: iconPadding ?? const EdgeInsets.all(11.0),
            child: SvgPicture.asset(
              iconPath,
              colorFilter: ColorFilter.mode(
                iconColor ?? AppColors.kBlack,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
