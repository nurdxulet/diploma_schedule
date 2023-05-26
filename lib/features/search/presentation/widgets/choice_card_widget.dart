import 'package:flutter/material.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/widgets/error_image_widget.dart';

class ChoiceCardWidget extends StatelessWidget {
  final Color? cardColor;
  final int? overallScore;
  final int? currentScore;
  final String? text;
  final TextStyle? textStyle;
  final int? index;
  
  final Function()? onCardTap;
  const ChoiceCardWidget({
    super.key,
    this.index,
    this.text,
    this.overallScore,
    this.currentScore,
    this.cardColor,
    this.textStyle, this.onCardTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0).copyWith(top: 0),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: cardColor ?? AppColors.kWhite,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: AppColors.kBlack.withOpacity(0.07),
            ),
            BoxShadow(
              offset: const Offset(0, 2),
              blurRadius: 16,
              color: AppColors.kBlack.withOpacity(0.07),
            )
          ],
        ),
        child: Material(
          borderRadius: BorderRadius.circular(12),

        color: Colors.transparent,
          child: InkWell(
            onTap: onCardTap,
          borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "$index",
                      style: AppTextStyles.m14w400,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(50),
                  //   child: Image.network(
                  //     "https://e1.pxfuel.com/desktop-wallpaper/146/700/desktop-wallpaper-neymar-pink-hair.jpg",
                  //     fit: BoxFit.cover,
                  //     height: 40,
                  //     width: 40,
                  //     errorBuilder: (context, error, stackTrace) {
                  //       return const ErrorImageWidget(
                  //         width: 40,
                  //         height: 40,
                  //       );
                  //     },
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 8,
                  // ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text ?? '',
                        style: textStyle ?? AppTextStyles.m14w400,
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
