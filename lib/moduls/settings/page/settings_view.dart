import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "settings view",
        style: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
