import 'package:advanced_app/features/onboarding/ui/widgets/onboarding_body.dart';
import 'package:advanced_app/features/onboarding/ui/widgets/onboarding_bottom.dart';
import 'package:advanced_app/features/onboarding/ui/widgets/onboarding_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h),
          child: Column(
            children: [
              const OnboardingHeader(),
              SizedBox(
                height: 40.h,
              ),
              const OnboardingBody(),
              const OnboardingBottom(),
            ],
          ),
        ),
      ),
    ));
  }
}
