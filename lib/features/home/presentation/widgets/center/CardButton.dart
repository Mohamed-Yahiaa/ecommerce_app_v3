import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color borderColor;
  final double borderWidth;
  final Color bgColor;

  const CardButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.borderColor = Colors.white,
    this.borderWidth = 1,
    this.bgColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        padding: EdgeInsets.fromLTRB(8, 8, 9.33, 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(color: borderColor, width: borderWidth),
            color: bgColor),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text, style: TextStyles.font12White600W),
            SizedBox(width: 5.33.w),
            Icon(
              Icons.arrow_forward,
              color: borderColor,
              size: 16.w,
            ),
          ],
        ),
      ),
    );
  }
}
