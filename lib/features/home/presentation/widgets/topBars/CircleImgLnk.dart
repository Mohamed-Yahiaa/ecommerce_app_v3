// في ملف features/onboarding/presentation/widgets/page_indicator_and_skip.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CirclImgLnk extends StatelessWidget {
  final String url;

  const CirclImgLnk({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28.w,
      backgroundColor: Colors.amber,
      child: Image.asset(url),
    );
  }
}
