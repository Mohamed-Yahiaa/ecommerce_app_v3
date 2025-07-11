import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MixedLine extends StatelessWidget {
  const MixedLine({
    super.key,
    required this.txt1,
    required this.txt2,
  });
  final String txt1;
  final String txt2;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        Text(
          txt2,
          style: TextStyles.font12Gray400W.copyWith(color: ClrMngr.orange),
        ),
        SizedBox(width: 5.w),
        Text(txt1, style: TextStyles.font12Gray400W),
      ],
    );
  }
}
