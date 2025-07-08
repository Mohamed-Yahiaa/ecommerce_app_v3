import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TxtButtonTxt extends StatelessWidget {
  const TxtButtonTxt(
      {super.key,
      this.alignment = WrapAlignment.start, // بدل MainAxisAlignment
      required this.txt,
      required this.caption,
      required this.txt2,
      required this.onPressed});
  final WrapAlignment alignment;
  final VoidCallback onPressed;
  final String txt;
  final String caption;
  final String txt2;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: alignment,
      children: [
        Text(
          txt,
          style: TextStyles.font14Gray400W,
        ),
        SizedBox(width: 5.w),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero, // 👈 كده مفيش Padding خالص
              minimumSize: Size(0, 0), // 👈 يمنع الحد الأدنى الإجباري
              tapTargetSize: MaterialTapTargetSize
                  .shrinkWrap), // يقلل المساحة القابلة للضغط
          child: Text(
            caption,
            style: TextStyles.font14Rose600W,
          ), //,      // 👈 يبدأ من الشمال
        ),
        SizedBox(width: 5.w),
        Text(
          txt2,
          style: TextStyles.font14Gray400W,
        )
      ],
    );
  }
}
