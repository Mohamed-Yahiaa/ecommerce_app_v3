import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_app/core/theming/colors.dart';

class TextStyles {
  //فيه طريقتين بنستخدمهم فى التسمية depends على فيجما فايل اللى جايلى

  static const String light = 'MontserratLight'; //300
  static const String regular = 'MontserratRegular'; //400
  static const String medium = 'MontserratMedium'; //500
  static const String semiBold = 'MontserratSemibold'; //600
  static const String bold = 'MontserratBold'; //700
  static const String extraBold = 'MontserratExtrabold'; //800

  static const String ArimoBold = 'Arimo-Bold'; //800

  static TextStyle font105Black700W = TextStyle(
    fontSize: 10.5.sp,
    color: Color(0xFF000000).withOpacity(0.8),
    fontFamily: ArimoBold,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font10Black400W = TextStyle(
    fontSize: 10.sp,
    color: Color(0xFF21003D),
    fontFamily: regular,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font10lightred400W = TextStyle(
    fontSize: 10.sp,
    color: ClrMngr.lightred,
    fontFamily: regular,
    fontWeight: FontWeight.w400,
  );

  ///
  static TextStyle font12Gray300W = TextStyle(
    fontSize: 12.sp,
    color: ClrMngr.gray5,
    fontFamily: light,
    fontWeight: FontWeight.w300,
  );
  static TextStyle font12Black300W = TextStyle(
    fontSize: 12.sp,
    color: Colors.black,
    fontFamily: light,
    fontWeight: FontWeight.w300,
  );

  static TextStyle font12Gray400W = TextStyle(
    fontSize: 12.sp,
    color: ClrMngr.gray3,
    fontFamily: regular,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font12White400W = TextStyle(
    fontSize: 12.sp,
    color: Colors.white,
    fontFamily: regular,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font12Gray500W = TextStyle(
    fontSize: 12.sp,
    color: ClrMngr.gray2,
    fontFamily: medium,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font12White600W = TextStyle(
    fontSize: 12.sp,
    color: Colors.white,
    fontFamily: semiBold,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font12Black500W = TextStyle(
    fontSize: 12.sp,
    color: Colors.black,
    fontFamily: medium,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font14Gray600W = TextStyle(
    fontSize: 14.sp,
    color: ClrMngr.gray,
    fontFamily: semiBold,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font14Gray400W = TextStyle(
    fontSize: 14.sp,
    color: ClrMngr.gray2,
    fontFamily: regular,
    fontWeight: FontWeight.w400,
  );
  // static TextStyle font14Rose400W = TextStyle(
  //   fontSize: 14.sp,
  //   color: ClrMngr.rose,
  //   fontFamily: primaryFont,
  //   fontWeight: FontWeight.w400,
  // );
  static TextStyle font14Rose600W = TextStyle(
    fontSize: 14.sp,
    color: ClrMngr.rose,
    fontFamily: semiBold,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font16White500W = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontFamily: medium,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font16Black500W = TextStyle(
    fontSize: 16.sp,
    color: Colors.black,
    fontFamily: medium,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font16Black700W = TextStyle(
    fontSize: 16.sp,
    color: Colors.black,
    fontFamily: bold,
    fontWeight: FontWeight.w700,
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
    color: ClrMngr.rose,
    fontFamily: semiBold,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font20White700W = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontFamily: bold,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font20Black500W = TextStyle(
    fontSize: 20.sp,
    color: Colors.black,
    fontFamily: medium,
    fontWeight: FontWeight.w500,
  );

  //لو الديزاينر بيجيبلى الحاجة bold و SemiBold باستخدم الطريقة دى
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontFamily: extraBold,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font36Black700W = TextStyle(
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
