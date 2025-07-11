import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/data/main_cat_model.dart';
import 'package:ecommerce_app/features/home/presentation/screens/Cat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // لتحميل الصور من الإنترنت

class SearchBar1 extends StatelessWidget {
  const SearchBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 40.h,
        // 👇 إعدادات الخلفية البيضاء والحواف المدورة
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r), // حواف مدورة
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18.5, 0, 0, 0),
              child: SizedBox(
                  width: 14.58.w,
                  height: 40.h,
                  child: const Icon(Icons.search, color: Color(0xFFBBBBBB))),
            ),
            SizedBox(width: 12.92.w),
            Text(
              'Search any Product..',
              style:
                  TextStyles.font14Gray400W.copyWith(color: Color(0xFFBBBBBB)),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 21),
              child: SizedBox(
                  width: 14.w,
                  height: 40.h,
                  child: const Icon(Icons.mic, color: Color(0xFFBBBBBB))),
            ),
          ],
        ));
  }

  void _navTo_CatScreen(BuildContext context, Category catItm) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => CatScreen(category: catItm)),
    );
  }
}
