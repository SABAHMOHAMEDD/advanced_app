import 'package:advanced_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/logo.svg"),
        SizedBox(width: 5.w,),
        Text(
          "Docdoc",
          style: AppTextStyles.font24Black700Weight,
        )
      ],
    );
  }
}
