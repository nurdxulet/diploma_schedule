import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    super.key,
    required this.txt,
    required this.icon,
    required this.onPressed,
    required this.enabled,
  });

  final String txt;
  final IconData icon;
  final VoidCallback onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 20),
              const SizedBox(width: 10),
              Text(
                txt,
                style: AppTextStyles.m16w500
                    .copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
              ),
            ],
          ),
          if (enabled) SvgPicture.asset(Assets.icons.enabledIcon.path) else const SizedBox(),
        ],
      ),
    );
  }
}
