import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schedule/core/resources/resources.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
    required this.icon,
    required this.str,
    required this.onTap,
  });

  final SvgPicture icon;
  final String str;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: Row(
            children: [
              icon,
              const SizedBox(width: 15),
              Text(
                str,
                style: AppTextStyles.m16w500
                    .copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
              ),
              const Spacer(),
              const Icon(
                Icons.navigate_next_rounded,
                color: AppColors.kGrey2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
