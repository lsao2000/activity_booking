import 'package:activity_booking/config/router/activity_routes.dart';
import 'package:activity_booking/core/utils/translation/language_preferences.dart';
import 'package:activity_booking/core/utils/translation/translation.dart';
import 'package:activity_booking/features/auth/introduction/presentation/view/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Locale locale = await LanguagePreferences.getPreferredLanguage();
  runApp(MyApp(locale: locale));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.locale});
  final Locale? locale;

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translationsKeys: Translation.keys,
      // theme: Get.theme,
      // locale: Get.deviceLocale,
      locale: locale,
      fallbackLocale: Locale('en', 'US'),
      getPages: ActivityRoutes.routes,
      home: const IntroductionScreen(),
    );
  }
}
