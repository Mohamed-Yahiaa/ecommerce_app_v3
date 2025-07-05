import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

class TxtBox extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final Color borderColor; // لون الإطار
  final double borderWidth; // سمك الإطار
  final Color fillColor; // لون الخلفية

  const TxtBox({
    Key? key,
    required this.controller,
    this.labelText = '',
    this.hintText = '',
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.borderColor = ClrMngr.darkgray, // لون افتراضي
    this.borderWidth = 1.0, // سمك افتراضي
    this.fillColor = ClrMngr.lightgray, // خلفية افتراضية
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // decoration: InputDecoration(
      //   labelText: labelText,
      //   hintText: hintText,
      //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      //   prefixIcon: prefixIcon,
      //   suffixIcon: suffixIcon,
      // ),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        filled: fillColor != Colors.transparent,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
    );
  }
}
