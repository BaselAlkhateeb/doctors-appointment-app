import 'package:doctors_appointment/core/di/dependency_injection.dart';
import 'package:doctors_appointment/core/routing/app_router.dart';
import 'package:doctors_appointment/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
   await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
