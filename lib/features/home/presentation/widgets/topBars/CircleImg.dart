// في ملف features/onboarding/presentation/widgets/page_indicator_and_skip.dart
import 'package:ecommerce_app/features/home/data/main_cat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleImg extends StatelessWidget {
  final Category catItem;

  const CircleImg({
    super.key,
    required this.catItem,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'category_${catItem.id}',
        child: _buildIcon_crcl(catItem.imageUrl));
  }

  Widget _buildIcon_crcl(String imagePath) {
    return Container(
      width: 56.w,
      height: 56.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF1F1F1), // خلفية خفيفة
      ),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          width: 56.w,
          height: 56.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
