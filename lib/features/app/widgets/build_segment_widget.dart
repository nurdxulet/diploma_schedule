import 'package:flutter/material.dart';
import 'package:schedule/core/resources/resources.dart';

class BuildSegmentWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final bool isBordered;
  const BuildSegmentWidget({
    super.key,
    required this.isSelected,
    required this.text,
    this.isBordered = false,
  });
  //

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // border: isBordered && !isSelected ? Border.all() : null,
      ),
      child: Text(
        text,
        style: AppTextStyles.m14w500.copyWith(
          color: isSelected ? AppColors.kWhite : AppColors.kBlueBlack,
          height: 1,
        ),
      ),
    );
  }
}
