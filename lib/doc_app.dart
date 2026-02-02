import 'package:doctors_appointment/core/routing/app_router.dart';
import 'package:doctors_appointment/core/routing/routes_string.dart';
import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManeger.primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesString.onboardingView,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
