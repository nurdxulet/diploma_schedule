import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schedule/core/resources/resources.dart';

class CustomTextField extends StatelessWidget {
  final bool? enabled;
  final bool ocureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final int maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final void Function(String)? onFieldSubmitted;
  final int? maxLength;
  final double? borderRadius;
  final Color? fillColor;
  final Function()? onEditingComplete;
  final Widget? label;
  final EdgeInsets? contentPadding;
  final Color? borderSideColor;
  final BoxConstraints? boxConstraints;
  final Color? suffixColor;
  const CustomTextField({
    super.key,
    this.ocureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.textStyle,
    this.controller,
    this.validator,
    this.onChanged,
    required this.maxLines,
    this.inputFormatters,
    this.keyboardType,
    this.onFieldSubmitted,
    this.maxLength,
    this.borderRadius,
    this.fillColor,
    this.onEditingComplete,
    this.label,
    this.contentPadding,
    this.enabled,
    this.borderSideColor,
    this.boxConstraints,
    this.suffixColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      onEditingComplete: onEditingComplete,
      maxLength: maxLength,
      onFieldSubmitted: onFieldSubmitted,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      cursorColor: AppColors.kBlue2,
      obscureText: ocureText,
      style: textStyle ??
          AppTextStyles.m14w500
              .copyWith(height: 22 / 14, decoration: TextDecoration.none),
      decoration: InputDecoration(
        constraints: boxConstraints,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16)
                .copyWith(bottom: 12),
        label: label,
        labelStyle: AppTextStyles.m12w500Blue2,
        fillColor: fillColor,
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderSideColor ?? AppColors.kBlue2),
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderSideColor ?? AppColors.kBlue2),
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderSideColor ?? AppColors.kBlue2),
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
      ),
    );
  }
}
