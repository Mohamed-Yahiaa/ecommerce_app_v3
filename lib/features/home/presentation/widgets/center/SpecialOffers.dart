import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/CardButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialOffers extends StatefulWidget {
  final double h; //height
  final Color color;
  final String title;
  final String subtitle;
  final IconData icon;
  final String img;
  final VoidCallback onPressed;

  const SpecialOffers({
    super.key,
    required this.h,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.img,
    required this.onPressed,
  });

  @override
  State<SpecialOffers> createState() => _ImageCardSliderState();
}

class _ImageCardSliderState extends State<SpecialOffers> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: SizedBox(
        height: widget.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(widget.img),
              SizedBox(width: 24.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(widget.title + ' ',
                          style: TextStyles.font16Black500W
                              .copyWith(height: 20 / 16)),
                      _textIconOutlined('😱'),
                    ],
                  ),
                  Text(widget.subtitle,
                      style:
                          TextStyles.font12Black300W.copyWith(height: 16 / 12)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textIconOutlined(String icon) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.r),
        border: Border.all(color: Colors.black.withOpacity(0.15), width: 1),
      ),
      alignment: Alignment.center,
      width: 20.w,
      height: 20.w,
      child: Text(icon, style: TextStyles.font105Black700W),
    );
  }
}
