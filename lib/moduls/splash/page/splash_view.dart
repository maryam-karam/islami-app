import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "/";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // byro7 ynady 3la al initState abl mynady 3la al build

    Timer(
      Duration(seconds: 2),
          () {
        Navigator.pushReplacementNamed(context, LayoutView.routName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context)
        .size;
    return Scaffold(
      body: Image.asset(
        "assets/images/back_ground_splash_screen.png",
        fit: BoxFit.cover,
        height: mediaQuery.height,
        width: mediaQuery.width,
      ),
    );
  }
}
