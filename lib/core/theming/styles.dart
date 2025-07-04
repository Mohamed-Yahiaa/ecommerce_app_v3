import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_app/core/theming/colors.dart';

class TextStyles {
  //فيه طريقتين بنستخدمهم فى التسمية depends على فيجما فايل اللى جايلى

  static const String primaryFont = 'MontserratRegular';
  static const String semiBold = 'MontserratSemibold';
  static const String bold = 'MontserratBold';
  static const String extraBold = 'MontserratExtrabold';

  static TextStyle font14GraySemibold = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.gray,
    fontFamily: semiBold,
    fontWeight: FontWeight.w600,
  );

  //الطريقة الاولى
  static TextStyle font18Black600Weight = TextStyle(
    fontSize: 18.sp,
    color: Colors.black,
    fontFamily: semiBold,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font20LightRedSemiBold = TextStyle(
    fontSize: 20.sp,
    color: Color(0xFFF83758),
    fontFamily: semiBold,
    fontWeight: FontWeight.bold,
  );

  //لو الديزاينر بيجيبلى الحاجة bold و SemiBold باستخدم الطريقة دى
  static TextStyle font24BlackExtraBold = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontFamily: extraBold,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font36BlackBold = TextStyle(
    fontSize: 36.sp,
    color: Colors.black,
    fontFamily: bold,
    fontWeight: FontWeight.bold,
  );
}
//تسميات افضل
/*class TextStyles {
  // 1. استخدام ثوابت للخطوط
  static const String primaryFont = 'Montserrat';
  static const String boldFont = 'MontserratBold';
  static const String semiBoldFont = 'MontserratSemiBold';

  // 2. تحسين التسمية لتكون أكثر وصفية
  static TextStyle get onboardingTitle => TextStyle(
        fontFamily: boldFont,
        fontSize: 24.sp,
        color: Colors.black,
        height: 1.2,
      );

  static TextStyle get bodyText => TextStyle(
        fontFamily: primaryFont,
        fontSize: 14.sp,
        color: ColorsManager.gray,
        height: 1.5,
      );

  // 3. إضافة أنماط شائعة
  static TextStyle get buttonText => TextStyle(
        fontFamily: semiBoldFont,
        fontSize: 16.sp,
        color: Colors.white,
      );
}*/
