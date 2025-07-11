import 'package:ecommerce_app/features/auth/presentation/widgets/bold_caption.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/button_rose.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/mixed_line.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/txtbox_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    final _nameController = TextEditingController();
    //final _passwordController = TextEditingController();

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
                  BoldCaption(caption: 'Forgot \npassword?'),
                  SizedBox(height: 32.h),
                  TxtboxEmail(controller: _nameController),
                  SizedBox(height: 26.h),
                  MixedLine(
                      txt1: '* ',
                      txt2:
                          'We will send you a message to set or reset your new password'),
                  SizedBox(height: 26.h),
                  ButtonRose(cap: 'Submit', onPressed: () {}),
                  SizedBox(height: 421.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
