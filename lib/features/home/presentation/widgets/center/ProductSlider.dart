import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/data/Product_model.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/ImgClipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductSlider extends StatefulWidget {
  final double w; //height
  final double h; //height
  final List<Product> prds; //height
  // final Color color;
  // final String img;
  // final String title;
  // final String subtitle;

  const ProductSlider({
    super.key,
    required this.w,
    required this.h,
    required this.prds,
    // required this.color,
    // required this.img,
    // required this.title,
    // required this.subtitle,
  });

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
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
            itemCount: widget.prds.length,
            itemBuilder: (context, index) {
              final product = widget.prds[index];
              return Container(
                //color: Colors.white,
                width: widget.w, //170
                margin: const EdgeInsets.symmetric(horizontal: 6), //6//14
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  //elevation: 4,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // _clipImg(
                      //     product.image, widget.w, widget.h / 2, 4.r), //124.h
                      ImgClipper(
                          img: product.image,
                          w: widget.w,
                          h: widget.h / 2,
                          r: 4.r),

                      // SizedBox(height: 8.h),
                      //const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (product.title.isNotEmpty)
                              Text(product.title,
                                  style: TextStyles.font12Black500W),
                            SizedBox(height: 4.h),
                            Text(product.desc,
                                style: TextStyles.font10Black400W
                                    .copyWith(height: 1.5)), //1.6
                            SizedBox(height: 4.h),
                            Text(
                              '₹${product.price.toStringAsFixed(0)}',
                              style: TextStyles.font12Black500W,
                            ),
                            SizedBox(height: 0),
                            Row(
                              children: [
                                Text(
                                  '₹${product.oldPrice.toStringAsFixed(0)}',
                                  style: TextStyles.font12Gray300W,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '${product.discount.toStringAsFixed(0)}%Off',
                                  style: TextStyles.font10lightred400W,
                                ),
                              ],
                            ),
                            SizedBox(height: 4.h),
                            Row(
                              children: [
                                if (product.haveRateVote != false)
                                  ...List.generate(5, (starIndex) {
                                    return Icon(
                                      starIndex < product.rating.round()
                                          ? Icons.star
                                          : Icons.star_border,
                                      size: 11.67,
                                      color: Colors.amber,
                                    );
                                  }),
                                if (product.haveRateVote != false)
                                  Text(
                                    product.vote.trim(),
                                    style: TextStyles.font10lightred400W
                                        .copyWith(color: Color(0xFFA4A9B3)),
                                  )
                              ],
                            ),
                          ],
                        ),
                      ),

                      //),
                    ],
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
            top: 100,
            child: _buildArrowButton(Icons.arrow_forward, _scrollToNext),
          ),

        // زر شمال
        if (_showLeftButton)
          Positioned(
            left: 0,
            top: 100,
            child: _buildArrowButton(Icons.arrow_back, _scrollToPrev),
          ),
      ],
    );
  }

  Widget _buildArrowButton(IconData icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Icon(icon, color: Colors.white),
      ),
    );
  }

  // Widget _clipImg(String img, double w, double h, double r) {
  //   return ClipRRect(
  //     borderRadius: BorderRadius.circular(r),
  //     child: Image.asset(
  //       img,
  //       height: h,
  //       width: w,
  //       fit: BoxFit.cover,
  //     ),
  //   );
  // }
}

class BottomStraightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addRect(Rect.fromLTRB(0, 0, size.width, size.height - 20));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TopBottomStraightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addRect(Rect.fromLTRB(0, 5, size.width, size.height - 30));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
