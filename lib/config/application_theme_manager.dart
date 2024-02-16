import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color primaryDarkColor = Color(0XFF141A2E);
  static const Color OnprimaryDarkColor = Color(0XFFFACC1D);

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
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          fontFamily: "El Messiri",
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: "El Messiri",
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
          fontFamily: "El Messiri",
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          fontFamily: "El Messiri",
          color: Colors.black,
        ),
      ),
      dividerTheme: DividerThemeData(
        color: primaryColor,
      ));
  static var darkTheme = ThemeData(
      primaryColor: primaryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      iconTheme: const IconThemeData(
        color: OnprimaryDarkColor,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primaryDarkColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: OnprimaryDarkColor,
        selectedLabelStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: OnprimaryDarkColor,
        ),
        selectedIconTheme: IconThemeData(
          color: OnprimaryDarkColor,
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
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          fontFamily: "El Messiri",
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: "El Messiri",
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
          fontFamily: "El Messiri",
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          fontFamily: "El Messiri",
          color: Colors.white,
        ),
      ),
      dividerTheme: DividerThemeData(
        color: OnprimaryDarkColor,
      ));
}
