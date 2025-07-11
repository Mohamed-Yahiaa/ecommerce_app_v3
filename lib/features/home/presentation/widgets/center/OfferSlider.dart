import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/data/Offer_Model.dart';
import 'package:ecommerce_app/features/home/data/Product_model.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/ImgClipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferSlider extends StatefulWidget {
  final double w; //height
  final double h; //height
  final List<Offer> offers; //height
  // final Color color;
  // final String img;
  // final String title;
  // final String subtitle;

  const OfferSlider({
    super.key,
    required this.w,
    required this.h,
    required this.offers,
    // required this.color,
    // required this.img,
    // required this.title,
    // required this.subtitle,
  });

  @override
  State<OfferSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<OfferSlider> {
  final ScrollController _scrollController = ScrollController();
  bool _showLeftButton = false;
  bool _showRightButton = true;

  void _scrollToNext() {
    final position = _scrollController.position;
    if (position.pixels + 250 < position.maxScrollExtent) {
      _scrollController.animateTo(
        position.pixels + 250,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      _scrollController.animateTo(
        position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void _scrollToPrev() {
    final position = _scrollController.position;
    if (position.pixels - 250 > position.minScrollExtent) {
      _scrollController.animateTo(
        position.pixels - 250,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      _scrollController.animateTo(
        position.minScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _showLeftButton = _scrollController.offset > 10;
        _showRightButton = _scrollController.offset <
            _scrollController.position.maxScrollExtent - 10;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: widget.h, //241
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: widget.offers.length,
            itemBuilder: (context, index) {
              final product = widget.offers[index];
              return Container(
                //color: Colors.white,
                width: widget.w, //170
                margin: const EdgeInsets.symmetric(horizontal: 6), //6//14
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  //elevation: 4,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 0.h),
                        Text(product.title,
                            style: TextStyles.font20Black500W
                                .copyWith(height: 1.5)), //1.6
                        SizedBox(height: 12.h),
                        ImgClipper(
                            img: product.image,
                            w: widget.w,
                            h: widget.h - 82.h,
                            r: 8.r),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'up to ${product.discount.toStringAsFixed(0)} % Off',
                                style: TextStyles.font16Black700W,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        // زر يمين
        if (_showRightButton)
          Positioned(
            right: 0,
            bottom: 3,
            child: _buildArrowButton(Icons.chevron_right, _scrollToNext),
          ),

        // زر شمال
        if (_showLeftButton)
          Positioned(
            left: 0,
            bottom: 3,
            child: _buildArrowButton(Icons.chevron_left, _scrollToPrev),
          ),
      ],
    );
  }

  Widget _buildArrowButton(IconData icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(
        icon,
        color: Colors.black,
        weight: 700,
        size: 27,
      ),
    );
  }
}
