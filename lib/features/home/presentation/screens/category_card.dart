import 'package:flutter/material.dart';

const double kPaddingHorizontal = 16;

class CategoryItem {
  CategoryItem({
    required this.title,
    required this.imagePath,
    this.subtitle,
    this.subtitleColor,
  });

  final String title;
  final String imagePath;
  final String? subtitle;
  final Color? subtitleColor;
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    required this.title,
    required this.imagePath,
    this.subtitle = "0",
    this.width = 200,
    this.height = 200,
    this.subtitleColor = Colors.orangeAccent,
    this.backgroundColor = const Color(0xFFF8F8F8),
    this.borderRadius = const BorderRadius.all(Radius.circular(30)),
    this.onTap,
  });

  final String title;
  final String subtitle;
  final double width;
  final double height;
  final Color subtitleColor;
  final String imagePath;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              decoration: BoxDecoration(
                  color: backgroundColor, borderRadius: borderRadius),
              width: width,
              height: height,
              child: ClipRRect(
                borderRadius: borderRadius,
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Text(title, style: theme.textTheme.titleLarge),
                SizedBox(width: 4.0),
                Text(
                  "($subtitle)",
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: subtitleColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
