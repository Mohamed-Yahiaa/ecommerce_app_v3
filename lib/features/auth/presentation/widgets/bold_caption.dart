import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/theming/styles.dart';

class BoldCaption extends StatelessWidget {
  const BoldCaption({super.key, required this.caption});

  final String caption;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          caption,
          style: TextStyles.font36Black700W,
        ),
      ],
    );
  }
}
