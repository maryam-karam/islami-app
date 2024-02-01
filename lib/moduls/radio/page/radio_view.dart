import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery
        .of(context)
        .size;
    var theme = Theme.of(context);

    return Column(
      children: [
        Container(
            padding: EdgeInsets.only(top: 40, bottom: 20),
            child: Image.asset(
              "assets/images/radio_img.png",
              height: mediaQuery.height * 0.3,
            )),
        Text(
          "إذاعة القرآن الكريم",
          style: TextStyle(
            fontFamily: "El Messiri",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous,
                    color: theme.primaryColor,
                    size: 35,
                  )),
            ),
            Expanded(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: theme.primaryColor,
                    size: 40,
                  )),
            ),
            Expanded(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_next_rounded, color: theme.primaryColor,
                    size: 35,)),
            ),
          ],
        ),
      ],
    );
  }
}
