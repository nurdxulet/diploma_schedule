import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';

class ChoiceCardWidget extends StatelessWidget {
  final bool? choosable;
  final bool? isChoosed;
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
    this.textStyle,
    this.onCardTap,
    this.isChoosed = false,
    this.choosable = false,
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
                      "$index.",
                      style: AppTextStyles.m14w400,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
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
                  if (choosable!)
                    if (isChoosed != null)
                      SvgPicture.asset(
                        isChoosed! ? Assets.icons.checkmarkFilled24.path : Assets.icons.checkmarkNotFilled24.path,
                        height: 24,
                        width: 24,
                      )
                    else
                      const SizedBox()
                  else
                    const SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
