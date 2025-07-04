import 'package:ecommerce_app/core/helpers/extensions.dart';
import 'package:ecommerce_app/core/routing/routes.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding_data.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding_model.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding_pages.dart';
import 'package:ecommerce_app/features/onboarding/presentation/widget/next_button.dart';
import 'package:ecommerce_app/features/onboarding/presentation/widget/indicator_and_skip.dart';
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
      margin: EdgeInsets.symmetric(horizontal: 4),
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
                  IndicatorAndSkip(
                      currentPage: currentPage,
                      totalPages: pages.length,
                      onSkipPressed: () => _navigateToLogin(context)),
                  Expanded(
                      child: PageView.builder(
                          controller: _pageController,
                          itemCount: pages.length,
                          onPageChanged: (index) =>
                              context.read<OnboardingCubit>().goToPage(index),
                          itemBuilder: (context, index) {
                            return OnboardingPage(model: pages[index]);
                          })),
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

    bool isLastPage = currentPage == onboardingPages.length - 1;

    return Stack(alignment: Alignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildPageIndicator(currentPage, onboardingPages.length),
      ),
      SizedBox(width: 10.0),
      Expanded(
        child: Align(
          alignment: FractionalOffset.bottomRight,
          child: NextButton(
              onPressed: () {
                isLastPage
                    ? context.pushReplacementNamed(Routes.login)
                    : _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease); //cubit.nextPage();
              },
              isLastPage: isLastPage),
        ),
      )
    ]);
  }

  void _navigateToLogin(BuildContext context) {
    //Navigator.pushReplacementNamed(context, Routes.login);
    context.pushReplacementNamed(Routes.login);
  }
}
