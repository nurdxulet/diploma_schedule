import 'package:flutter/material.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/features/app/widgets/custom/custom_buttons/custom_square_button.dart';

class AppBarMainPage extends StatelessWidget {
  final Widget title;
  const AppBarMainPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2).copyWith(top: 8),
          child: Row(
            children: [
              CustomSquareButton(
                iconPath: Assets.icons.calendarIcon.path,
                onTap: () {
                  // context.router.push(const CalendarRoute());
                },
              ),
              const SizedBox(
                width: 8,
              ),
              CustomSquareButton(
                iconPath: Assets.icons.icNotification.path,
                onTap: () {
                  // context.router.push(const NotificationRoute());
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
