import 'package:advanced_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles{

  static TextStyle font24Black700Weight =TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700
  );

  static TextStyle font32BlueBold =TextStyle(
    fontSize: 32.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeight.bold
  );
  static TextStyle font13GreyRegular =TextStyle(
    fontSize: 13.sp,
    color: AppColors.grey,
    fontWeight: FontWeight.normal
  );
  static TextStyle font16WhiteSemiBold =TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w500
  );
}