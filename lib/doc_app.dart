import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding_data.dart';
import 'package:ecommerce_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/onboarding/presentation/cubit/onboarding_cubit.dart';

class DocApp extends StatelessWidget {
  //final AppRouter appRouter;
  //const DocApp({super.key, required this.appRouter});
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        //initialRoute: Routes.onBoarding,
        //onGenerateRoute: appRouter.generateRoute,
        home: BlocProvider(
          create: (context) =>
              OnboardingCubit(totalPages: onboardingPages.length),
          child: OnboardingScreen(),
        ),
      ),
    );
  }
}
