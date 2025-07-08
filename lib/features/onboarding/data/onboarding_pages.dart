import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(model.imagePath,
              height: MediaQuery.of(context).size.height * 0.4),
          const SizedBox(height: 32),
          Text(model.title,
              style: TextStyles.font24Black700Weight.copyWith(height: 1.2),
              textAlign: TextAlign.center),
          const SizedBox(height: 16),
          Text(model.description,
              style: TextStyles.font14Gray600W.copyWith(height: 1.5),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
