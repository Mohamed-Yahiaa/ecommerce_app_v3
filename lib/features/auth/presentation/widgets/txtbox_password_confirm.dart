import 'package:ecommerce_app/features/auth/presentation/widgets/TxtBox.dart';
import 'package:flutter/material.dart';

class TxtBoxConfirmPass extends StatefulWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;

  const TxtBoxConfirmPass({
    Key? key,
    required this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  _TxtBoxPasswordState createState() => _TxtBoxPasswordState();
}

class _TxtBoxPasswordState extends State<TxtBoxConfirmPass> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TxtBox(
      controller: widget.controller,
      labelText: 'ConfirmPassword',
      hintText: 'ConfirmPassword',
      obscureText: _obscureText,
      prefixIcon: const Icon(Icons.lock),
      suffixIcon: IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
        ),
        //onPressed: () => onPressed,
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
