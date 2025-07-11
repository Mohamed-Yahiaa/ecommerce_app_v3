import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/data/main_cat_model.dart';
import 'package:ecommerce_app/features/home/presentation/screens/Cat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart'; // لتحميل الصور من الإنترنت

class SortFilter extends StatelessWidget {
  const SortFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 6.w),
        Text('All Featured', style: TextStyles.font18Black600Weight),
        Spacer(),
        _buildFilterIcon1('Sort', 'assets/images/home/arrow_updown.svg'),
        SizedBox(width: 12.w),
        _buildFilterIcon2('Filter', 'assets/images/home/filter_symbol.svg'),
        SizedBox(width: 5.w),
      ],
    );
  }

  Widget _buildFilterIcon1(String txt, String imagePath) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      child: Container(
        color: Colors.white,
        child: SizedBox(
          height: 24,
          width: 61,
          child: Row(
            children: [
              SizedBox(width: 8.w),
              Text(txt,
                  style:
                      TextStyles.font12Gray400W.copyWith(color: Colors.black)),
              SizedBox(width: 6.18.w),
              SvgPicture.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterIcon2(String txt, String imagePath) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      child: Container(
        color: Colors.white,
        child: SizedBox(
          height: 24,
          width: 67,
          child: Row(
            children: [
              SizedBox(width: 8.w),
              Text(txt,
                  style:
                      TextStyles.font12Gray400W.copyWith(color: Colors.black)),
              SizedBox(width: 5.33.w),
              SvgPicture.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  // void _navTo_CatScreen(BuildContext context, Category catItm) {
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => CatScreen(category: catItm)),
  //   );
  // }
}
