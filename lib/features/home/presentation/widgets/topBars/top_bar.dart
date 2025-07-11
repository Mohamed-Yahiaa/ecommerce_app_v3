import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 👈 ده بيخلي العرض أقصى حاجة
      height: 56.h,
      color: ClrMngr.bg1, // الخلفية
      //padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // اختياري
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildMenuButton(),
          _buildIcon_rect('assets/images/home/toplogo.svg'),
          _buildIcon_crcl('assets/images/home/avatar.jpg')
        ],
      ),
    );
  }

  Widget _buildMenuButton() {
    return // زر القائمة الجانبية
        Container(
      width: 32.w,
      height: 32.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF2F2F2), // خلفية خفيفة
      ),
      child: Builder(
        builder: (context) => GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 2, width: 18, color: Colors.black),
                const SizedBox(height: 3),
                Container(height: 2, width: 18, color: Colors.black),
                const SizedBox(height: 3),
                Container(height: 2, width: 12, color: Colors.black),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon_rect(String imagePath) {
    return Container(
      //width: 111.78.w,
      //height: 56.w,
      // decoration: const BoxDecoration(
      //   shape: BoxShape.rectangle,
      //   //color: Color(0xFFF1F1F1), // خلفية خفيفة
      // ),
      child: SvgPicture.asset(width: 111.78, imagePath),
    );
  }

  Widget _buildIcon_crcl(String imagePath) {
    return Container(
      width: 40.w,
      height: 40.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF1F1F1), // خلفية خفيفة
      ),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
