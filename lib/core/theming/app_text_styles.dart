import 'package:advanced_app/core/theming/app_colors.dart';
import 'package:advanced_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle font24BlackBold = TextStyle(
      fontSize: 24.sp, color: Colors.black, fontWeight: FontWeight.w700);

  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      color: AppColors.mainBlue,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font13GreyRegular = TextStyle(
      fontSize: 13.sp,
      color: AppColors.grey,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font13BlueRegular = TextStyle(
      fontSize: 13.sp,
      color: AppColors.mainBlue,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font16WhiteMedium = TextStyle(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeightHelper.medium);
  static TextStyle font14GreyRegular = TextStyle(
      fontSize: 14.sp,
      color: AppColors.grey,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font24BlueBold = TextStyle(
      fontSize: 24.sp,
      color: AppColors.mainBlue,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font14LightGreyRegular = TextStyle(
      fontSize: 14.sp,
      color: AppColors.lightgrey,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font14DarkBlueRegular = TextStyle(
      fontSize: 14.sp,
      color: AppColors.darkBlue,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font16WhiteSemiBold = TextStyle(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeightHelper.semiBold);

  static TextStyle font12BlueMedium = TextStyle(
      fontSize: 12.sp,
      color: AppColors.mainBlue,
      fontWeight: FontWeightHelper.medium);

  static TextStyle font13DarkBlueRegular = TextStyle(
      fontSize: 13.sp,
      color: AppColors.darkBlue,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font13MoreMoreLightGreyRegular = TextStyle(
      fontSize: 13.sp,
      color: AppColors.moreMoreLightGrey,
      fontWeight: FontWeightHelper.regular);
}
