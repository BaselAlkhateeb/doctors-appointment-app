import 'package:doctors_appointment/core/helpers/font_weight_helper.dart';
import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  //------------Black-----------------------
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );
   static TextStyle font14darkBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorsManeger.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
     static TextStyle font12darkBlueRegular = TextStyle(
    fontSize: 12.sp,
    color: ColorsManeger.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );
      static TextStyle font13darkBlueMedium = TextStyle(
    fontSize: 13.sp,
    color: ColorsManeger.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  //------------Blue-----------------------

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManeger.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    color: ColorsManeger.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );
    static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    color: ColorsManeger.primaryColor,
    fontWeight: FontWeightHelper.regular,
  );
      static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: ColorsManeger.primaryColor,
    fontWeight: FontWeightHelper.semiBold,
  );
  //------------Grey-----------------------

  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorsManeger.grey,
    fontWeight: FontWeightHelper.regular,
  );
    static TextStyle font12LightGreyRegular = TextStyle(
    fontSize: 12.sp,
    color: ColorsManeger.lightGrey,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    color: ColorsManeger.grey,
    fontWeight: FontWeightHelper.regular,
  );
    static TextStyle font14HintColorMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorsManeger.hintColor,
    fontWeight: FontWeightHelper.medium,
  );
  //------------White-----------------------

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
}
