import 'package:flutter/cupertino.dart';
import 'package:schedule/core/resources/resources.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({
    super.key,
    required this.notificationOn,
    required this.onChanged,
  });

  final bool notificationOn;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: CupertinoSwitch(
        activeColor: AppColors.kMainOrange,
        value: notificationOn,
        onChanged: onChanged,
      ),
    );
  }
}
