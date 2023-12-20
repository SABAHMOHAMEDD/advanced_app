import 'package:advanced_app/core/theming/app_colors.dart';
import 'package:advanced_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObsecureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObsecureText,
      this.suffixIcon,
      this.backgroundColor
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.mainBlue, width: 1.3),
                  borderRadius: BorderRadius.circular(16.r)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: AppColors.lighterGrey, width: 1.3),
                  borderRadius: BorderRadius.circular(16.r)),
          hintStyle: hintStyle ?? AppTextStyles.font14LightGreyRegular,
          suffixIcon: suffixIcon,
          hintText: hintText,
          filled: true,
          fillColor: backgroundColor?? AppColors.moreLightGrey
          ),
      style: AppTextStyles.font14DarkBlueRegular,
      obscureText: isObsecureText ?? false,
    );
  }
}
