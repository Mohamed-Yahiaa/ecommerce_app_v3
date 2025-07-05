import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/Button_Rose.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/TxtBox.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/TxtBox_name.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/forgot_password.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/txt_Pass.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      final email = _nameController.text;
      final password = _passwordController.text;

      // هنا تقدر تضيف منطق تسجيل الدخول الحقيقي
      print('Email: $email');
      print('Password: $password');

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("تم تسجيل الدخول بنجاح")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          //padding: const EdgeInsets.all(24),
          child: Container(
            padding: const EdgeInsets.all(26),
            width: size.width < 500 ? double.infinity : 400,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome\nBack!',
                    style: TextStyles.font36BlackBold,
                  ),
                  const SizedBox(height: 24),

                  // Email Field
                  TxtBoxName(controller: _nameController),
                  const SizedBox(height: 16),

                  // Password Field
                  TxtPass(
                    controller: _passwordController,
                    onPressed: () => setState(() {
                      _obscurePassword = !_obscurePassword;
                    }),
                  ),

                  const SizedBox(height: 12),

                  // Forgot Password
                  ForgotPass(),

                  const SizedBox(height: 16),

                  // Login Button
                  ButtonRose(onPressed: () => _login()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
