// في ملف features/onboarding/presentation/widgets/page_indicator_and_skip.dart
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class IndicatorAndSkip extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final VoidCallback onSkipPressed;

  const IndicatorAndSkip({
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
          Row(
            children: [
              Text('${currentPage + 1}',
                  style: TextStyles.font18Black600Weight),
              Text('/$totalPages',
                  style: TextStyles.font18Black600Weight
                      .copyWith(color: Colors.grey)),
            ],
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
