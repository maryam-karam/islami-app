import 'package:flutter/material.dart';

class TasbehViwe extends StatelessWidget {
  const TasbehViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Tasbeh view",
        style: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
