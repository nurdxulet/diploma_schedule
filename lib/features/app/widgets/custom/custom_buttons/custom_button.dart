import 'package:flutter/material.dart';
import 'package:schedule/core/resources/resources.dart';

class CustomButton extends StatelessWidget {
  final Widget body;
  final void Function()? onClick;
  final ButtonStyle? style;
  final double? width;
  final double height;
  final LinearGradient? gradient;
  final double radius;

  const CustomButton({
    super.key,
    required this.body,
    required this.onClick,
    this.style,
    this.width,
    this.height = 48,
    this.gradient,
    this.radius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(radius),
      ),
      width: width ?? MediaQuery.of(context).size.width,
      height: height == 0 ? null : height,
      child: ElevatedButton(
        onPressed: onClick,
        style: style ??
            mainButtonStyle(
              radius: radius,
              height: height,
            ),
        child: body,
      ),
    );
  }
}

ButtonStyle mainButtonStyle({
  double elevation = 0,
  double height = 48,
  double radius = 4,
}) {
  return ElevatedButton.styleFrom(
    maximumSize: const Size.fromHeight(48),
    foregroundColor: AppColors.kBlue2,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    elevation: elevation,
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}

ButtonStyle checksButtonStyle({
  double elevation = 0,
  double height = 44,
  double radius = 12,
}) {
  return ElevatedButton.styleFrom(
    maximumSize: const Size.fromHeight(48),
    foregroundColor: AppColors.kLightBlue,
    backgroundColor: AppColors.kLightBlue,
    shadowColor: Colors.transparent,
    elevation: elevation,
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}

ButtonStyle profileDescriptionButtonStyle({
  double elevation = 0,
  double height = 44,
  double radius = 12,
}) {
  return ElevatedButton.styleFrom(
    maximumSize: const Size.fromHeight(48),
    foregroundColor: AppColors.kWhite,
    backgroundColor: AppColors.kWhite,
    shadowColor: Colors.transparent,
    elevation: elevation,
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}

ButtonStyle outlinedButtonStyle({
  double elevation = 0,
  double height = 48,
  double radius = 4,
}) {
  return ElevatedButton.styleFrom(
    maximumSize: const Size.fromHeight(48),
    foregroundColor: AppColors.kPuple,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    elevation: elevation,
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
      side: const BorderSide(color: AppColors.kPuple),
    ),
  );
}

ButtonStyle greyOutlinedButtonStyle({
  double elevation = 0,
  double height = 48,
  double radius = 8,
}) {
  return ElevatedButton.styleFrom(
    maximumSize: const Size.fromHeight(48),
    foregroundColor: AppColors.kWhite,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    elevation: elevation,
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
      side: const BorderSide(color: AppColors.kGrey2, width: 0.33),
    ),
  );
}

ButtonStyle pupleOutlinedButtonStyle({
  double elevation = 0,
  double height = 48,
  double radius = 8,
}) {
  return ElevatedButton.styleFrom(
    maximumSize: const Size.fromHeight(48),
    foregroundColor: AppColors.kPurple5,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    elevation: elevation,
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
      side: const BorderSide(color: AppColors.kPuple),
    ),
  );
}

ButtonStyle purpleOpacityButtonStyle({
  double elevation = 0,
  double height = 48,
  double radius = 4,
}) {
  return ElevatedButton.styleFrom(
    maximumSize: const Size.fromHeight(48),
    foregroundColor: AppColors.kPuple,
    backgroundColor: AppColors.kPuple.withOpacity(0.11),
    shadowColor: Colors.transparent,
    elevation: elevation,
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}

ButtonStyle purpleElevatedButtonStyle({
  double elevation = 1,
  double height = 46,
  double radius = 16,
  Color backgroundColor = Colors.white,
}) {
  return ElevatedButton.styleFrom(
    maximumSize: const Size.fromHeight(48),
    // foregroundColor: AppColors.kPuple,
    backgroundColor: backgroundColor,
    shadowColor: Colors.grey,
    elevation: elevation,
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}

// ButtonStyle whiteButtonStyleWithShadow({
//   double elevation = 7,
//   double radius = 8,
// }) {
//   return ElevatedButton.styleFrom(
//     foregroundColor: AppColors.kFoundationGrey,
//     backgroundColor: Colors.white,
//     elevation: elevation,
//     shadowColor: AppColors.kNeutralGray50,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(radius),
//       side: const BorderSide(
//         color: AppColors.kNeutralGray50,
//         width: 0.33,
//       ),
//     ),
//   );
// }

ButtonStyle buttonBg1ButtonStyle({
  double elevation = 0,
  double radius = 4,
}) {
  return ElevatedButton.styleFrom(
    foregroundColor: AppColors.kBlue,
    backgroundColor: AppColors.kButtonBg1,
    elevation: elevation,
    shadowColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}

// ButtonStyle foundationGreyButtonStyle({
//   double elevation = 0,
//   double radius = 4,
// }) {
//   return ElevatedButton.styleFrom(
//     foregroundColor: AppColors.kFoundationGrey,
//     backgroundColor: AppColors.kFoundationGreyLight,
//     elevation: elevation,
//     shadowColor: Colors.white,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(radius),
//     ),
//   );
// }

// ButtonStyle authButtonStyle({
//   double elevation = 0,
//   double radius = 4,
// }) {
//   return ElevatedButton.styleFrom(
//     foregroundColor: AppColors.kWhite,
//     backgroundColor: AppColors.kBlue,
//     // shadowColor: const Color.fromRGBO(255, 255, 255, 1),
//     elevation: elevation,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(radius),
//       side: const BorderSide(color: Colors.white),
//     ),
//   );
// }

// ButtonStyle blueButtonStyle({
//   double elevation = 0,
//   double radius = 10,
//   Color? backgroundColor = AppColors.kBlue,
//   Color? foregroundColor = AppColors.kWhite,
//   Color? disabledBackgroundColor = AppColors.kFoundationBlackLightHover,
//   Color? shadowColor = const Color.fromRGBO(255, 255, 255, 1),
//   BorderRadiusGeometry? borderRadius,
// }) {
//   return ElevatedButton.styleFrom(
//     foregroundColor: foregroundColor,
//     backgroundColor: backgroundColor,
//     shadowColor: shadowColor,
//     disabledBackgroundColor: disabledBackgroundColor,
//     elevation: elevation,
//     shape: RoundedRectangleBorder(
//       borderRadius: borderRadius ?? BorderRadius.circular(radius),
//       // side: const BorderSide(color: Colors.white),
//     ),
//   );
// }

// ButtonStyle bluePersontButtonStyle({
//   double elevation = 0,
//   double radius = 10,
// }) {
//   return ElevatedButton.styleFrom(
//     foregroundColor: AppColors.kWhite,
//     backgroundColor: const Color(0x684875F3),
//     shadowColor: const Color.fromRGBO(255, 255, 255, 1),
//     elevation: elevation,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(radius),
//       // side: const BorderSide(color: Colors.white),
//     ),
//   );
// }

// ButtonStyle greyButtonStyle({
//   double elevation = 0,
//   double radius = 10,
// }) {
//   return ElevatedButton.styleFrom(
//     foregroundColor: AppColors.kWhite,
//     backgroundColor: const Color(0xFFE6E6E6),
//     shadowColor: const Color.fromRGBO(255, 255, 255, 1),
//     elevation: elevation,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(radius),
//       // side: const BorderSide(color: Colors.white),
//     ),
//   );
// }

// ButtonStyle greenButtonStyle({
//   double elevation = 0,
//   double radius = 4,
// }) {
//   return ElevatedButton.styleFrom(
//     foregroundColor: AppColors.kWhite,
//     backgroundColor: AppColors.kGreen,
//     shadowColor: const Color.fromRGBO(255, 255, 255, 1),
//     elevation: elevation,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(radius),
//       // side: const BorderSide(color: Colors.white),
//     ),
//   );
// }

// ButtonStyle greenDarkButtonStyle({
//   double elevation = 0,
//   double radius = 4,
// }) {
//   return ElevatedButton.styleFrom(
//     foregroundColor: AppColors.kWhite,
//     backgroundColor: AppColors.kDarkGreen,
//     shadowColor: const Color.fromRGBO(255, 255, 255, 1),
//     elevation: elevation,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(radius),
//       // side: const BorderSide(color: Colors.white),
//     ),
//   );
// }

// ButtonStyle blueAlpha32ButtonStyle({
//   double elevation = 0,
// }) {
//   return ElevatedButton.styleFrom(
//     // foregroundColor: AppColors.kGray400,
//     backgroundColor: const Color(0xffe5f1ff),
//     shadowColor: Colors.white,
//     elevation: elevation,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(10),
//       // side: const BorderSide(color: Colors.white),
//     ),
//   );
// }
