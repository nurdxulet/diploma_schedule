import 'package:flutter/material.dart';
import 'package:schedule/core/resources/resources.dart';

// ignore: must_be_immutable
class RadioButton extends StatefulWidget {
  RadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.txt,
    this.color = AppColors.kWhite,
    this.selectColor = AppColors.kGreen,
    this.onSelected,
    this.onChanged,
  });

  final int value;
  final int groupValue;
  final Color color;
  final Color selectColor;
  final String txt;
  void Function()? onSelected;
  void Function(int?)? onChanged;

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          final bool selected = widget.value != widget.groupValue;
          if (selected) {
            widget.onChanged!(widget.value);
            widget.onSelected!();
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(
                //   height: 18,
                //   width: 18,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     border: Border.all(color: widget.value == widget.groupValue ? widget.selectColor : AppColors.kGrey2),
                //     color: widget.value == widget.groupValue ? widget.selectColor : widget.color,
                //   ),
                //   child: widget.value == widget.groupValue
                //       ? Icon(
                //           Icons.check,
                //           color: widget.color,
                //           size: 15,
                //         )
                //       : null,
                // ),
                Text(
                  widget.txt,
                  style: AppTextStyles.m15w500,
                ),
                if (widget.value == widget.groupValue)
                  const Icon(
                    Icons.check_circle_rounded,
                    size: 20,
                    color: AppColors.kPrimary,
                  )
                else
                  const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
