import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/Button_Rose.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/TxtBox.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/TxtBox_name.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/TxtBox_password.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/forgot_password.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/signup.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      backgroundColor: Colors.white,
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
                  SizedBox(height: 63.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome\nBack!',
                        style: TextStyles.font36BlackBold,
                      ),
                    ],
                  ),
                  SizedBox(height: 36.h),
                  TxtBoxName(controller: _nameController),
                  SizedBox(height: 31.h),
                  TxtBoxPassword(controller: _nameController),
                  SizedBox(height: 9.h),
                  ForgotPass(
                      cap: 'Forgot Password?', clr: ClrMngr.rose, size: 14),
                  SizedBox(height: 52.h),
                  ButtonRose(onPressed: () => _login()),
                  SizedBox(height: 75.h),
                  Text('- OR Continue with -',
                      style: TextStyles.font12GrayMedium),
                  SizedBox(height: 20.h),
                  SocialIcons(), // Google  Apple  Facebook
                  SizedBox(height: 28.h),
                  SignUp(),
                  SizedBox(height: 147.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
