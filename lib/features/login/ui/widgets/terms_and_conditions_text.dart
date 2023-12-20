import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_text_styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "By logging, you agree to our ",
              style: AppTextStyles.font13MoreMoreLightGreyRegular),
          TextSpan(
              text: " Terms & Conditions ",
              style: AppTextStyles.font13DarkBlueRegular),
          TextSpan(
              text: " and ",
              style: AppTextStyles.font13MoreMoreLightGreyRegular
                  .copyWith(height: 1.5.h)),
          TextSpan(
            text: "Privacy Policy ",
            style: AppTextStyles.font13DarkBlueRegular,
          )
        ]));
  }
}
