import 'package:flutter/material.dart';

class SuraTittleWidget extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const SuraTittleWidget(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            style: TextStyle(
                fontFamily: "El Messiri",
                fontSize: 20,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 38,
          width: 1,
          child: VerticalDivider(),
        ),
        Expanded(
          child: Text(
            suraName,
            style: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
