import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  final String cap; //caption
  final Color clr; //color
  final double size; //size
  const ForgotPass(
      {super.key, required this.cap, required this.clr, required this.size});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // هنا تقدر تضيف شاشة نسيت كلمة المرور
        },
        child: Text(cap,
            style: TextStyle(
              color: clr,
              fontSize: size,
            )),
      ),
    );
  }
}
