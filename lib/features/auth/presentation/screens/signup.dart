import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/auth/presentation/screens/get_started.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/bold_caption.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/button_rose.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/txtbox_name.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/txtbox_password.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/txt_and_button.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _Signup();
}

class _Signup extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

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
                  BoldCaption(caption: 'Create an\naccount'),
                  SizedBox(height: 33.h),
                  TxtBoxName(controller: _nameController),
                  SizedBox(height: 31.h),
                  TxtboxPassword(controller: _passwordController),
                  SizedBox(height: 31.h),
                  TxtboxPassword(controller: _passwordController),
                  SizedBox(height: 19.h),
                  TxtButtonTxt(
                      alignment: WrapAlignment.start, // 👈 محاذاة لليسار
                      txt: 'By clicking the ',
                      caption: 'Register',
                      txt2: 'button, you agree to the public offer',
                      onPressed: () => _getStarted),
                  SizedBox(height: 53.5.h),
                  ButtonRose(
                      cap: 'Create Account', onPressed: () => _getStarted),
                  SizedBox(height: 40.h),
                  Text('- OR Continue with -',
                      style: TextStyles.font12Gray500W),
                  SizedBox(height: 20.h),
                  SocialIcons(), // Google  Apple  Facebook
                  SizedBox(height: 28.h),
                  TxtButtonTxt(
                      txt: 'I Already Have an Account',
                      caption: 'Login',
                      txt2: '',
                      onPressed: () => _getStarted(context)),
                  SizedBox(height: 81.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _getStarted(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => GetStarted()),
    );
  }
}
