import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule/core/resources/resources.dart';

class SettingsButtonSubtitle extends StatelessWidget {
  const SettingsButtonSubtitle({
    super.key,
    required this.icon,
    required this.str,
    required this.subtitle,
    required this.onPressed,
  });

  final String str;
  final String subtitle;
  final SvgPicture icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16,
          ),
          child: Row(
            children: [
              SizedBox(height: 25, width: 25, child: icon),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    str,
                    style: AppTextStyles.m16w500
                        .copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    subtitle,
                    style: AppTextStyles.m16w500
                        .copyWith(color: AppColors.kGrey2, fontSize: 14, fontWeight: FontWeight.normal),
                  )
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.navigate_next_rounded,
                color: AppColors.kGrey2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
