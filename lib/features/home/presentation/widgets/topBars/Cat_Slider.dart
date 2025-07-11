import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/data/main_cat_model.dart';
import 'package:ecommerce_app/features/home/presentation/screens/Cat_screen.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/topBars/CircleImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // لتحميل الصور من الإنترنت

class CatSlider extends StatelessWidget {
  final List<Category> catList;

  const CatSlider({super.key, required this.catList});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 👇 إعدادات الخلفية البيضاء والحواف المدورة
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r), // حواف مدورة
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.2),
        //     spreadRadius: 2,
        //     blurRadius: 5,
        //     offset: const Offset(0, 3),
        //   ),
        // ],
      ),
      margin:
          EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h), // هامش خارجي
      padding: EdgeInsets.all(8.w), // هامش داخلي
      child: SizedBox(
        height: 87, // ارتفاع الشريط
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: InkWell(
                borderRadius: BorderRadius.circular(50), // لجعل التأثير دائريًا
                splashColor:
                    Colors.blue.withOpacity(0.3), // لون الموجة عند الضغط
                onTap: () => _navTo_CatScreen(context, catList[index]),
                child: Column(
                  children: [
                    CircleImg(catItem: catList[index]),
                    SizedBox(height: 4.h),
                    Text(catList[index].title,
                        style: TextStyles.font10Black400W),
                    Spacer(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _navTo_CatScreen(BuildContext context, Category catItm) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => CatScreen(category: catItm)),
    );
  }
}
