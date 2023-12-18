import 'package:advanced_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset("assets/svgs/logo_low_opacity.svg"),
      Container(
        // it controls style over our container child (doctor pic)
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.0),
            ],
            stops: [0, 0.5],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Image.asset("assets/images/doctor.png"),
      ),
      Positioned(
          bottom: 20.h,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor\n Appointment App",
            textAlign: TextAlign.center,
            style: AppTextStyles.font32BlueBold.copyWith(height: 1.2),
          ))
    ]);
  }
}
 