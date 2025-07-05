import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

class ButtonRose extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonRose({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ClrMngr.rose, // 👈 هنا لون الخلفية
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white, // 👈 لون النص
            fontSize: 16, // اختياري: حجم الخط
            fontWeight: FontWeight.bold, // اختياري: ن
          ),
        ),
      ),
    );
  }
}
