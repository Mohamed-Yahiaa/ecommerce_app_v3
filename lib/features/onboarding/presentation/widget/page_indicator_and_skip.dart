// في ملف features/onboarding/presentation/widgets/page_indicator_and_skip.dart
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PageIndicatorAndSkip extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final VoidCallback onSkipPressed;

  const PageIndicatorAndSkip({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onSkipPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${currentPage + 1}/$totalPages',
            style: TextStyles.font18Black600Weight,
          ),
          TextButton(
            onPressed: onSkipPressed,
            child: Text('Skip', style: TextStyles.font18Black600Weight),
          ),
        ],
      ),
    );
  }
}
