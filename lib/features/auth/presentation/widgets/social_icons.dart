import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIcon('assets/images/social/Google.png'),
        SizedBox(width: 10.w),
        _buildIcon('assets/images/social/apple.png'),
        SizedBox(width: 10.w),
        _buildIcon('assets/images/social/Facebook.png'),
      ],
    );
  }

  Widget _buildIcon(String imagePath) {
    return Container(
      width: 56,
      height: 56,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF1F1F1), // خلفية خفيفة
      ),
      child: Image.asset(imagePath),
    );
  }
}
