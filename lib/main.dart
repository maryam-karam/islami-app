import 'package:flutter/material.dart';
import 'package:islami_app/config/application_theme_manager.dart';
import 'package:islami_app/moduls/quran/page/quran_detail.dart';

import 'layout/layout_view.dart';
import 'moduls/hadeth/page/hadeth_details.dart';
import 'moduls/splash/page/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: ApplicationThemeManager.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        LayoutView.routName: (context) => LayoutView(),
        QuranDetailsView.routName: (context) => QuranDetailsView(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}

