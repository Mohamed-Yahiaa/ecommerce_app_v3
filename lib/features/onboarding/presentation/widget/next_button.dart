// في ملف features/onboarding/presentation/widgets/next_button.dart
import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/onboarding/presentation/widget/next.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLastPage;

  const NextButton({
    super.key,
    required this.onPressed,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          isLastPage ? next(caption: 'Get Started') : next(caption: 'Next'),
          if (!isLastPage) ...[
            SizedBox(width: 8.0),
            Icon(Icons.arrow_forward, color: ColorsManager.primary, size: 20.0),
          ],
        ],
      ),
    );
  }
}
