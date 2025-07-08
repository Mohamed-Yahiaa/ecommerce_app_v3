import 'package:ecommerce_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should display OnboardingScreen', (WidgetTester tester) async {
    // 1. بناء التطبيق مع BlocProvider إذا كنت تستخدم Cubit
    await tester.pumpWidget(
      MaterialApp(
        home: OnboardingScreen(), // اختبار مباشر للشاشة
      ),
    );

    // أو إذا كنت تريد اختبار DocApp كاملاً:
    /*
    await tester.pumpWidget(
      DocApp(
        appRouter: AppRouter(),
      ),
    );
    await tester.pumpAndSettle(); // مهم للانتظار حتى اكتمال التوجيه
    */

    // 2. التحقق من وجود الشاشة
    expect(find.byType(OnboardingScreen), findsOneWidget);
  });
}

/*
void main() {
  testWidgets('Test rendering of initial onboarding screen',
      (WidgetTester tester) async {
    // 1. بناء التطبيق وتشغيل إطار واحد
    await tester.pumpWidget(
      BlocProvider(
        create: (context) => OnboardingCubit(totalPages: 3),
        child: DocApp(),
      ),
    );

    // 2. التحقق من وجود عناصر شاشة Onboarding
    expect(find.byType(OnboardingScreen), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);

    // 3. التحقق من وجود النصوص الأساسية
    expect(find.text('Choose Products'), findsOneWidget);
    expect(find.text('Amet minim mollit non deserunt ullamco'), findsOneWidget);

    // 4. التحقق من وجود أزرار التنقل
    expect(find.text('1/3'), findsOneWidget); // مؤشر الصفحة
    expect(find.text('Skip'), findsOneWidget);
  });

  testWidgets('Test navigation between onboarding pages',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      BlocProvider(
        create: (context) => OnboardingCubit(totalPages: 3),
        child: DocApp(),
      ),
    );

    // 1. التحقق من الصفحة الأولى
    expect(find.text('1/3'), findsOneWidget);

    // 2. التمرير إلى الصفحة الثانية
    final pageView = find.byType(PageView);
    await tester.fling(pageView, Offset(-300, 0), 300);
    await tester.pumpAndSettle();

    // 3. التحقق من الصفحة الثانية
    expect(find.text('2/3'), findsOneWidget);
    expect(find.text('Make Payment'), findsOneWidget);

    // 4. التمرير إلى الصفحة الثالثة
    await tester.fling(pageView, Offset(-300, 0), 300);
    await tester.pumpAndSettle();

    // 5. التحقق من الصفحة الثالثة
    expect(find.text('3/3'), findsOneWidget);
    expect(find.text('Get Your Order'), findsOneWidget);
  });
}
*/
