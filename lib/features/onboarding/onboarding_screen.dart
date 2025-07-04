import 'package:ecommerce_app/core/routing/routes.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding_data.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding_model.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding_page.dart';
import 'package:ecommerce_app/features/onboarding/presentation/widget/page_indicator_and_skip.dart';
import 'package:ecommerce_app/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:ecommerce_app/features/onboarding/presentation/widget/next.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  OnboardingScreen({super.key});

  List<Widget> _buildPageIndicator(int currentPage, int length) {
    List<Widget> list = [];
    for (int i = 0; i < length; i++) {
      list.add(i == currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 10.0,
      width: isActive ? 40.0 : 12,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey[400],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<OnboardingModel> pages = onboardingPages;

    return Scaffold(
      body: BlocProvider(
        create: (context) => OnboardingCubit(totalPages: pages.length),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: BlocBuilder<OnboardingCubit, int>(
            builder: (context, currentPage) {
              return Column(
                children: <Widget>[
                  PageIndicatorAndSkip(
                    currentPage: currentPage,
                    totalPages: pages.length,
                    onSkipPressed: () => _navigateToLogin(context),
                  ), //===============================
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: pages.length,
                      onPageChanged: (index) =>
                          context.read<OnboardingCubit>().goToPage(index),
                      itemBuilder: (context, index) {
                        return OnboardingPage(model: pages[index]);
                      },
                    ),
                  ),
                  const SizedBox(height: 20),

                  _buildNavigationButton(context, currentPage),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationButton(BuildContext context, int currentPage) {
    final cubit = context.read<OnboardingCubit>();

    return currentPage == onboardingPages.length - 1
        ? Container(
            height: 100.0,
            width: double.infinity,
            color: Colors.white,
            child: GestureDetector(
                //GestureDetector in Flutter is a (Widget) بيستخدم لاكتشاف الإيماءات  ex:onTap, onLongPress ..etc
                onTap: () => _navigateToLogin(context),
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: Text('Get started',
                            style: TextStyles.font20LightRedSemiBold)))))
        : Stack(alignment: Alignment.center, children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    _buildPageIndicator(currentPage, onboardingPages.length)),
            SizedBox(width: 10.0),
            currentPage != onboardingPages.length - 1
                ? Expanded(
                    child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: TextButton(
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: next())))
                : Text(''),
          ]);
  }

  void _navigateToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.login);
  }
}
