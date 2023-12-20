import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/logo.svg"),
        horizentalSpace(5),
        Text(
          "DocDoc",
          style: AppTextStyles.font24BlackBold,
        )
      ],
    );
  }
}
