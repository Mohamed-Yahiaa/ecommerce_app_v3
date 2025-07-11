import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/data/card_slider_data.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/CardButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSlider extends StatefulWidget {
  const CardSlider({super.key});

  @override
  State<CardSlider> createState() => _ImageCardSliderState();
}

class _ImageCardSliderState extends State<CardSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> images = [
    'assets/images/cards/card01.jpg',
    'assets/images/cards/card01.jpg',
    'assets/images/cards/card01.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          // elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: SizedBox(
            height: 189,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: cardItems.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                final item = cardItems[index];
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(item.image, fit: BoxFit.cover),
                      // Container(
                      //     color: Colors.black.withOpacity(0.4)), // تغطية خفيفة
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.title, style: TextStyles.font20White700W),
                            const SizedBox(height: 4),
                            Text(item.subtitle,
                                style: TextStyles.font12White400W
                                    .copyWith(height: 1.4)),
                            SizedBox(height: 12.h),
                            CardButton(onPressed: () {}, text: item.btnCap)
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        // Card(
        //   elevation: 4,
        //   shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        //   child: SizedBox(
        //     height: 189.h,
        //     width: double.infinity,
        //     child: PageView.builder(
        //       controller: _pageController,
        //       itemCount: images.length,
        //       onPageChanged: (index) => setState(() => _currentPage = index),
        //       itemBuilder: (context, index) {
        //         return ClipRRect(
        //           borderRadius: BorderRadius.circular(12),
        //           child: Image.asset(
        //             images[index],
        //             fit: BoxFit.cover,
        //             width: double.infinity,
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            images.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: _currentPage == index ? 9 : 8,
              height: _currentPage == index ? 9 : 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index ? ClrMngr.rose2 : ClrMngr.gray4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
