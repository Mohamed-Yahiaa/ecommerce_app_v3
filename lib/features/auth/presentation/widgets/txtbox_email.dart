import 'package:ecommerce_app/features/auth/presentation/widgets/TxtBox.dart';
import 'package:flutter/material.dart';

class TxtboxEmail extends StatefulWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;

  const TxtboxEmail({
    Key? key,
    required this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  _TxtBoxEmailState createState() => _TxtBoxEmailState();
}

class _TxtBoxEmailState extends State<TxtboxEmail> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TxtBox(
      controller: widget.controller,
      labelText: 'Enter your email address',
      hintText: 'Enter your email address',
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
          return 'الرجاء إدخال الإيميل';
        }
        // if (value.length < 6) {
        //   return 'البريد الالكترونى يجب أن تكون على الأقل 6 أحرف';
        // }
        return null;
      },
      onChanged: widget.onChanged,
    );
  }
}
