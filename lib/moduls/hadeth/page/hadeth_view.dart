import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "hadeth view",
        style: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
