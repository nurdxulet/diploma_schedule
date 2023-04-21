import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schedule/core/resources/resources.dart';

class CustomTextField extends StatelessWidget {
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String? hintText;
  final TextStyle? hintStyle;
  final double? height;
  final double? width;
  final int maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextEditingController? repeatController;
  final void Function(String)? onFieldSubmitted;
  final int? maxLength;
  final double borderRadius;
  final Color? fillColor;
  final double borderWidth;
  final TextAlign textAlign;
  final BoxConstraints? suffixIconConstraints;
  final BoxConstraints? prefixIconConstraints;
  final String? suffixText;
  final Function()? onEditingComplete;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final BorderRadius? borderR;
  final Widget? label;
  final bool autofocus;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final bool readOnly;
  final void Function()? onTap;
  final FloatingLabelBehavior? floatingLabelBehavior;

  const CustomTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.hintText,
    this.height,
    this.width,
    this.keyboardType,
    this.maxLines = 1,
    this.inputFormatters,
    this.validator,
    this.repeatController,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.onFieldSubmitted,
    this.maxLength,
    this.borderRadius = 10,
    this.fillColor = AppColors.kWhite,
    this.borderWidth = 0.6,
    this.onEditingComplete,
    this.suffixIconConstraints,
    this.textAlign = TextAlign.start,
    this.suffixText,
    this.textStyle,
    this.hintStyle,
    this.focusedBorderColor,
    this.borderR,
    this.label,
    this.autofocus = false,
    this.focusNode,
    this.prefix,
    this.prefixIconConstraints,
    this.contentPadding,
    this.readOnly = false,
    this.borderColor,
    this.onTap,
    this.floatingLabelBehavior,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        readOnly: readOnly,
        textInputAction: TextInputAction.done,
        autofocus: autofocus,
        onEditingComplete: onEditingComplete,
        autocorrect: false,
        focusNode: focusNode,
        obscureText: obscureText ?? false,
        style: textStyle ?? AppTextStyles.m16w700Grey,
        inputFormatters: inputFormatters,
        textAlignVertical: TextAlignVertical.center,
        maxLines: maxLines,
        keyboardType: keyboardType,
        controller: controller,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        cursorColor: AppColors.kBlack,
        validator: validator,
        textAlign: textAlign,
        maxLength: maxLength,
        onTap: onTap,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          prefix: prefix,
          prefixIconConstraints: prefixIconConstraints,
          suffixIcon: suffixIcon,
          suffixText: suffixText,
          // suffixStyle: AppTextStyles.os12w400,
          suffixIconConstraints: suffixIconConstraints,
          label: label,
          labelStyle: AppTextStyles.m12w400,
          floatingLabelBehavior: floatingLabelBehavior,
          hintStyle: hintStyle ?? AppTextStyles.m16w700Grey,
          filled: true,
          fillColor: fillColor,
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 11,
              ),
          hintText: hintText,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.5,
            ),
            borderRadius: borderR ?? BorderRadius.circular(borderRadius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.kGrey2,
              width: borderWidth,
            ),
            borderRadius: borderR ?? BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5, // borderWidth,
              color: focusedBorderColor ?? Colors.black,
            ),
            borderRadius: borderR ?? BorderRadius.circular(borderRadius),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? AppColors.kGrey2,
              width: borderWidth,
            ),
            borderRadius: borderR ?? BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
