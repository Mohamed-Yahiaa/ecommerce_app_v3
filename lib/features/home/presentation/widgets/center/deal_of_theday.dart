import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/CardButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DealOfTheday extends StatefulWidget {
  final Color color;
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onPressed;

  const DealOfTheday({
    super.key,
    required this.color, //Color(0xFF4392F9)
    required this.title, //
    required this.subtitle, //
    required this.icon, //
    required this.onPressed,
  });

  @override
  State<DealOfTheday> createState() => _ImageCardSliderState();
}

class _ImageCardSliderState extends State<DealOfTheday> {
  final PageController _pageController = PageController();
  //final Color clr=Color(0xFF4392F9);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title, style: TextStyles.font16White500W),
                  Row(
                    children: [
                      Icon(
                        widget.icon,
                        color: Colors.white,
                        size: 13.33.w,
                      ),
                      SizedBox(width: 5.3.w),
                      Text(widget.subtitle, style: TextStyles.font12White400W)
                    ],
                  ),
                ],
              ),
              const Spacer(),
              CardButton(onPressed: widget.onPressed, text: 'View all')
            ],
          ),
        ),
      ),
    );
  }
}
