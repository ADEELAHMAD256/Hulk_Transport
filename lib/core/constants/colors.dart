import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {
  //
  static const primaryColor = Color(0xFFFF6900);
  static const secondaryColor = Color(0xFF022026);
  static const blackColor = Color.fromRGBO(0, 0, 0, 0.87);
  static const textFieldColor = Color(0xFFF3F2F2);
  static const greyColor = Color(0xFFABB4C6);
  static const darkGreyColor = Color(0xFF8E9398);
}

class AppTextStyles {
  static const TextStyle kthintTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
    letterSpacing: -0.28,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ktbtnTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
  );

  static TextStyle ktRegularTextStyle = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ktMediumTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
  );

  static TextStyle ktBoldTextStyle = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins",
    letterSpacing: -0.28,
    fontStyle: FontStyle.normal,
  );
}
