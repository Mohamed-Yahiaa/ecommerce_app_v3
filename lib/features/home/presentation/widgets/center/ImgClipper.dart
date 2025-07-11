import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/theming/styles.dart';

class ImgClipper extends StatelessWidget {
  //const next({super.key});
  final String img;
  final double w;
  final double h;
  final double r;

  const ImgClipper(
      {super.key,
      required this.img,
      required this.w,
      required this.h,
      required this.r});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(r),
      child: Image.asset(
        img,
        height: h,
        width: w,
        fit: BoxFit.cover,
      ),
    );
  }
}
