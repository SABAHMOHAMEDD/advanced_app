import 'package:advanced_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "Already have an account yet? ",
          style: AppTextStyles.font13DarkBlueRegular),
      TextSpan(text: " Sign Up ", style: AppTextStyles.font12BlueMedium)
    ]));
  }
}
