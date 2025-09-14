import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguagePreferences {
  static Future<void> setPreferredLanguage(
      String languageCode, String country) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('preferred_language', languageCode);
    await prefs.setString('preferred_country', country);
  }

  static Future<Locale> getPreferredLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // return prefs.getString('preferred_language');
    return Locale(
      prefs.getString('preferred_language') ?? 'en',
      prefs.getString('preferred_country') ?? 'US',
    );
  }
}
