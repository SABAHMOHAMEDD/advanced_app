import 'package:advanced_app/core/helper/extentions.dart';
import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/core/routing/routes.dart';
import 'package:advanced_app/core/theming/app_colors.dart';
import 'package:advanced_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingBottom extends StatelessWidget {
  const OnboardingBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Text(
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            style: AppTextStyles.font13GreyRegular,
            textAlign: TextAlign.center,
          ),
          verticalSpace(40),
          TextButton(
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.mainBlue),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize:
                    MaterialStateProperty.all(const Size(double.infinity, 52)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r)))),
            child: Text(
              "Get Started",
              style: AppTextStyles.font16WhiteMedium,
            ),
          )
        ],
      ),
    );
  }
}
