import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/auth/presentation/screens/signup.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/bold_caption.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/button_rose.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/txtbox_name.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/txtbox_password.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/forgot_password.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/txt_and_button.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/social_icons.dart';
import 'package:ecommerce_app/features/home/presentation/screens/home_page.dart';
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
  // bool _obscurePassword = true;

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
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
                  BoldCaption(caption: 'Welcome\nBack!'),
                  SizedBox(height: 36.h),
                  TxtBoxName(controller: _nameController),
                  SizedBox(height: 31.h),
                  TxtboxPassword(controller: _nameController),
                  SizedBox(height: 9.h),
                  ForgotPass(
                      cap: 'Forgot Password?', clr: ClrMngr.rose, size: 14),
                  SizedBox(height: 52.h),
                  ButtonRose(cap: 'Login', onPressed: () => _login()),
                  SizedBox(height: 75.h),
                  Text('- OR Continue with -',
                      style: TextStyles.font12Gray500W),
                  SizedBox(height: 20.h),
                  SocialIcons(), // Google  Apple  Facebook
                  SizedBox(height: 28.h),
                  TxtButtonTxt(
                      txt: 'Create An Account',
                      caption: 'Sign Up',
                      txt2: '',
                      onPressed: () => _navToSignup(context)),
                  SizedBox(height: 147.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navToSignup(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Signup()),
    );
  }

  void _login() {
    if (!_formKey.currentState!.validate()) {
      // final email = _nameController.text;
      // final password = _passwordController.text;

      // هنا تقدر تضيف منطق تسجيل الدخول الحقيقي
      // print('Email: $email');
      // print('Password: $password');

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("تم تسجيل الدخول بنجاح")),
      );
      _navToHome(context);
    }
  }

  void _navToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}
