import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  //بيروح على صفحة جديدة عن طريق اسم المسار (routeName) اللي متسجل في MaterialApp.routes أو onGenerateRoute.
  //ممكن تبعت بيانات للصفحة الجديدة عن طريق arguments.
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  //نفس اللي فوق، بس بيستبدل الشاشة الحالية بالشاشة الجديدة (يعني مش هتقدر ترجع للخلف).
  //ممكن تبعت بيانات للصفحة الجديدة عن طريق arguments.
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      predicate,
      arguments: arguments,
    );
  }

  void pop() => Navigator.of(this).pop();

/*
  void navigateTo(Widget screen) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  void replaceWith(Widget screen) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  void pop() {
    Navigator.pop(this);
  }*/
}
