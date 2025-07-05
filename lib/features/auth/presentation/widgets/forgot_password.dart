import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // هنا تقدر تضيف شاشة نسيت كلمة المرور
        },
        child: const Text('نسيت كلمة المرور؟'),
      ),
    );
  }
}
