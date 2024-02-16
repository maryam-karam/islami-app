import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = "en";
  ThemeMode currentThemeMode = ThemeMode.dark;

  changLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;

    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) {
    if (currentThemeMode == newTheme) return;
    currentThemeMode = newTheme;

    notifyListeners();
  }

  String getBackGround() {
    return currentThemeMode == ThemeMode.dark
        ? "assets/images/backgroung_dark.png"
        : "assets/images/main_background.png";
  }

  String splash() {
    return currentThemeMode == ThemeMode.dark
        ? "assets/images/splash_dark – 1.png"
        : "assets/images/back_ground_splash_screen.png";
  }

  bool isDark() {
    return currentThemeMode == ThemeMode.dark;
  }
}
