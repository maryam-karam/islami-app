import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static var lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF000000),
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Color(0xFF000000),
      ),
      selectedIconTheme: IconThemeData(
        color: Color(0xFF000000),
      ),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(
        color: Colors.white,
        fontFamily: "El Messiri",
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
  );
}
