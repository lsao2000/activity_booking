import 'package:activity_booking/config/router/activity_routes.dart';
import 'package:activity_booking/core/utils/translation/translation.dart';
import 'package:activity_booking/features/auth/introduction/presentation/view/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translationsKeys: Translation.keys,
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      getPages: ActivityRoutes.routes,
      home: const IntroductionScreen(),
    );
  }
}
