import 'package:ecommerce_app/features/auth/presentation/widgets/TxtBox.dart';
import 'package:flutter/material.dart';

class TxtBoxPassword extends StatefulWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;

  const TxtBoxPassword({
    Key? key,
    required this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  _TxtBoxPasswordState createState() => _TxtBoxPasswordState();
}

class _TxtBoxPasswordState extends State<TxtBoxPassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TxtBox(
      controller: widget.controller,
      hintText: 'أدخل كلمة المرور',
      obscureText: _obscureText,
      prefixIcon: const Icon(Icons.lock),
      suffixIcon: IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'الرجاء إدخال كلمة المرور';
        }
        if (value.length < 6) {
          return 'كلمة المرور يجب أن تكون على الأقل 6 أحرف';
        }
        return null;
      },
      onChanged: widget.onChanged,
    );
  }
}
