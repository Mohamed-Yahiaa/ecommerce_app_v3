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
      labelText: 'Password',
      hintText: 'Password',
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

//الاستخدام

/*
class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TxtBox_name(controller: _nameController),
          SizedBox(height: 16),
          TxtBox_password(controller: _passwordController),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // عملية التسجيل
              }
            },
            child: Text('تسجيل'),
          ),
        ],
      ),
    );
  }
}*/
