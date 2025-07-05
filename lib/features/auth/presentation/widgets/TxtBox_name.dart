import 'package:ecommerce_app/features/auth/presentation/widgets/TxtBox.dart';
import 'package:flutter/material.dart';

class TxtBoxName extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;

  const TxtBoxName({
    Key? key,
    required this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TxtBox(
      controller: controller,
      labelText: 'Username or Email',
      hintText: 'Username or Email',
      keyboardType: TextInputType.name,
      prefixIcon: const Icon(Icons.person),
      //suffixIcon: const Icon(Icons.check_circle, color: Colors.green),  حلوة
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'الرجاء إدخال الاسم';
        }
        // if (!value.contains('@')) {
        //   return 'صيغة البريد غير صحيحة';
        // }
        return null;
      },
      onChanged: onChanged,
    );
  }
}
