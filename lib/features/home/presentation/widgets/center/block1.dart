import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/CardButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Block1 extends StatefulWidget {
  final double h; //height
  final Color color;
  final String imgOn;
  final String title;
  final String subtitle;

  final VoidCallback onPressed;

  const Block1({
    super.key,
    required this.h,
    required this.color,
    required this.imgOn,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  @override
  State<Block1> createState() => _ImageCardSliderState();
}

class _ImageCardSliderState extends State<Block1> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: SizedBox(
        height: widget.h,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Image.asset('assets/images/home/block1_2.png'),
            Image.asset('assets/images/home/block1_1.png'),
            Positioned(left: 28, child: Image.asset(height: 108, widget.imgOn)),
            Positioned(
              right: 16.w, // المسافة من اليسار
              top: 35.h, // المسافة من الأعلى
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.title,
                      style:
                          TextStyles.font16Black500W.copyWith(height: 20 / 16)),
                  Text(widget.subtitle,
                      style:
                          TextStyles.font10Black400W.copyWith(height: 16 / 10)),
                ],
              ),
            ),
            Positioned(
              right: 16.w, // المسافة من اليسار
              top: 84.h, // المسافة من الأعلى
              child: CardButton(
                onPressed: () {},
                text: 'Visit now',
                borderColor: Colors.white,
                bgColor: Color(0xFFF83758),
              ),
            )
          ],
        ),

        //),
      ),
    );
  }
}
