import 'package:ecommerce_app/features/onboarding/data/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(model.imagePath,
              height: MediaQuery.of(context).size.height * 0.4),
          const SizedBox(height: 32),
          Text(model.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(model.description,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}

/*import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(model.imagePath)),
          SizedBox(height: 25.0),
          Text(
            model.title,
            style: TextStyles.font24BlackExtraBold.copyWith(height: 1.2),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          Text(
            model.description,
            style: TextStyles.font14GraySemibold.copyWith(height: 1.5),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}*/
