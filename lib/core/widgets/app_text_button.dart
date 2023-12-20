import 'package:advanced_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String buttonText;
  final double? borderRadius;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? backgroundColor;
  final TextStyle? textStyle;

  final void Function()? onPressed;

  const AppTextButton(
      {super.key,
      this.onPressed,
      required this.buttonText,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonHeight,
      this.buttonWidth,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(borderRadius?.r ?? 16.0.r))),
          backgroundColor:
              MaterialStatePropertyAll(backgroundColor ?? AppColors.mainBlue),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
              horizontal: horizontalPadding?.w ?? 12.w,
              vertical: verticalPadding?.h ?? 14.h)),
          //the button width and height
          fixedSize: MaterialStateProperty.all(
              Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 50.h)),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: textStyle,
          
        ));
  }
}
