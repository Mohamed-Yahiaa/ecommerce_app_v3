//باحط فيه كل ال جينيريت راوت اللى انا عايزها
import 'package:ecommerce_app/features/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/routing/routes.dart';

class AppRouter {
  //<dynamic> تسمح بعودة أي نوع من الصفحات
  //الفئة الأساسية Route<T> في Flutter تستخدم Generic type
  //معظم التطبيقات تستخدم <dynamic> لأنها لا تحتاج لتقييد نوع الصفحة
  Route<dynamic> generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this
    //final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.initialRoute:
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Route not found for ${settings.name}')),
          ),
        );
    }
  }
}
