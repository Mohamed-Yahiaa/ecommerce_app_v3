import 'package:flutter/material.dart';

class TxtPass extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPressed;
  const TxtPass({super.key, required this.controller, required this.onPressed});
  final bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: _obscurePassword,
      decoration: InputDecoration(
        labelText: 'Username or Email',
        prefixIcon: const Icon(Icons.lock_outline),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        suffixIcon: IconButton(
          icon: Icon(
            _obscurePassword ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () => onPressed,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'يرجى إدخال كلمة المرور';
        }
        if (value.length < 6) {
          return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
        }
        return null;
      },
    );
  }
}
