import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/features/home/data/main_cat_data.dart';
import 'package:ecommerce_app/features/home/data/offer_data.dart';
import 'package:ecommerce_app/features/home/data/product_data.dart';
import 'package:ecommerce_app/features/home/presentation/screens/category_card.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/ImgClipper.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/OfferSlider.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/ProductSlider.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/SpecialOffers.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/block1.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/block2.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/deal_of_theday.dart';

import 'package:ecommerce_app/features/home/presentation/widgets/topBars/Cat_Slider.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/center/CardSlider.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/topBars/search_bar.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/topBars/sort_filter.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/topBars/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //final List<Category> categories;

    // بيانات وهمية
    // final List<Category> dummyCategories = List.generate(
    //     10,
    //     (index) => Category(
    //           id: '$index',
    //           title: 'تصنيف ${index + 1}',
    //           imageUrl: 'https://picsum.photos/200?random=$index',
    //         ));

    return Scaffold(
      backgroundColor: ClrMngr.bg1,
      body: Center(
        child: SingleChildScrollView(
          //padding: const EdgeInsets.all(24),
          child: Container(
            padding: const EdgeInsets.all(16),
            width: size.width < 500 ? double.infinity : 400,
            child: Form(
              key: _formKey,
              child: Container(
                width: double.infinity, // 👈 ده بيخلي العرض أقصى حاجة
                //color: ClrMngr.bg1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  // mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopBar(),
                    SizedBox(height: 16.h),
                    SearchBar1(),
                    SizedBox(height: 16.h),
                    SortFilter(),
                    SizedBox(height: 16.h),
                    CatSlider(catList: categories), // الشريط العلوي
                    SizedBox(height: 16.h),
                    CardSlider(),
                    SizedBox(height: 22.h),
                    DealOfTheday(
                      color: Color(0xFF4392F9),
                      title: 'Deal of the Day',
                      subtitle: '22h 55m 20s remaining',
                      icon: Icons.alarm,
                      onPressed: () {},
                    ),
                    SizedBox(height: 16.h),
                    ProductSlider(h: 241.h, w: 170.w, prds: products),
                    SizedBox(height: 16.h),
                    SpecialOffers(
                      h: 84,
                      color: Colors.white,
                      title: 'Special Offers',
                      subtitle:
                          'We make sure you get the\noffer you need at best prices',
                      icon: Icons.alarm,
                      img: 'assets/images/home/specialoffer.png',
                      onPressed: () {},
                    ),
                    SizedBox(height: 16.h),
                    Block1(
                      h: 172, //171
                      color: Colors.white,
                      imgOn: 'assets/images/home/prod_shoes.png',
                      title: 'Flat and Heels',
                      subtitle: 'Stand a chance to get rewarded',
                      onPressed: () {},
                    ),
                    SizedBox(height: 17.h),
                    DealOfTheday(
                      color: Color(0xFFFD6E87),
                      title: 'Trending Products ',
                      subtitle: 'Last Date 29/02/22',
                      icon: Icons.calendar_month,
                      onPressed: () {},
                    ),
                    SizedBox(height: 16.h),
                    ProductSlider(
                        w: 142.w, h: 186.h, prds: products2), // h: 186.h
                    SizedBox(height: 12.h),
                    Block2(
                      h: 270,
                      color: Colors.white,
                      imgTop: 'assets/images/home/block2.png',
                      title: 'New Arrivals',
                      subtitle: 'Summer’ 25 Collections',
                      onPressed: () {},
                    ),
                    SizedBox(height: 16.h),

                    OfferSlider(
                      w: 383,
                      h: 374,
                      offers: offers,
                    ),

                    // CategoryCard(
                    //     title: 'ffff',
                    //     imagePath: 'assets/images/home/avatar.jpg'),
                    //CirclImgLnk(url: 'assets/images/home/avatar.jpg'),
                    SizedBox(height: 40.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        height: 76,
        selectedIndex: 0,
        onDestinationSelected: (index) {
          // xử lý التبديل بين الشاشات
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined), label: ''),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }

  // void _getStarted(BuildContext context) {
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => GetStarted()),
  //   );
  // }
}
