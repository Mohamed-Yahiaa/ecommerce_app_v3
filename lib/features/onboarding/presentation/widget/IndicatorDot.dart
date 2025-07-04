// onboarding_indicator.dart
import 'package:flutter/material.dart';

class IndicatorDot extends StatelessWidget {
  final int currentPage;
  final int pageCount;
  final Color activeColor;
  final Color inactiveColor;

  const IndicatorDot({
    super.key,
    required this.currentPage,
    required this.pageCount,
    this.activeColor = Colors.black,
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(pageCount, (index) {
        return _IndicatorDot(
          isActive: index == currentPage,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
        );
      }),
    );
  }
}

class _IndicatorDot extends StatelessWidget {
  final bool isActive;
  final Color activeColor;
  final Color inactiveColor;

  const _IndicatorDot({
    required this.isActive,
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
        color: isActive ? activeColor : inactiveColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
