import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/theming/styles.dart';

class Next extends StatelessWidget {
  //const next({super.key});
  final String caption;

  const Next({super.key, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(caption,
            style: TextStyles.font18Black600Weight
                .copyWith(color: Color(0xFFF83758))),
        SizedBox(width: 10.0),
        //Icon(Icons.arrow_forward, color: Color(0xFFF83758), size: 30.0),
      ],
    );
  }
}
