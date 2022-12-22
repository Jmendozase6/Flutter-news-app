import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_production_app/core/constants/constants.dart' as constants;

TextStyle getTitleStyle() {
  return TextStyle(
    // color: ThemeColor.bodyText,
    fontWeight: FontWeight.w600,
    fontSize: 27.sp,
    height: 1.5,
  );
}

TextStyle getsubTitleStyle() {
  return TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    // height: 0.5.h,
  );
}

TextStyle getButtonTextStyle() {
  return TextStyle(
    // color: ThemeColor.bodyText,
    fontWeight: FontWeight.w400,
    fontSize: 20.sp,
    // height: 0.5.h,
  );
}

TextStyle getCountryTextStyle(Color color) {
  return TextStyle(
      // color: ThemeColor.bodyText,
      fontWeight: FontWeight.w400,
      fontSize: 18.sp,
      color: color
      // height: 0.5.h,
      );
}

ButtonStyle getRoundedButtonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: constants.buttonColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35.r),
    ),
  );
}

BoxDecoration roundedContainer() {
  return BoxDecoration(
    color: constants.componentColor,
    borderRadius: BorderRadius.circular(20.r),
    border: Border.all(
      color: constants.titleColor.withOpacity(0.2),
    ),
  );
}
