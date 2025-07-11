import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/CardButton.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/ImgClipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Block2 extends StatefulWidget {
  final double h; //height
  final Color color;
  final String imgTop;
  final String title;
  final String subtitle;

  final VoidCallback onPressed;

  const Block2({
    super.key,
    required this.h,
    required this.color,
    required this.imgTop,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  @override
  State<Block2> createState() => _ImageCardSliderState();
}

class _ImageCardSliderState extends State<Block2> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        height: widget.h,
        width: double.infinity,
        child: Column(
          children: [
            // Image.asset('assets/images/home/block2.png',
            //     width: double.infinity, height: 200),
            ImgClipper(img: widget.imgTop, w: double.infinity, h: 204, r: 8),
            Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.title,
                            style: TextStyles.font16Black500W
                                .copyWith(height: 20 / 16)),
                        Text(widget.subtitle,
                            style: TextStyles.font10Black400W
                                .copyWith(height: 16 / 10)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CardButton(
                      onPressed: () {},
                      text: 'View all',
                      borderColor: Colors.white,
                      bgColor: Color(0xFFF83758),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),

        //),
      ),
    );
  }
}
