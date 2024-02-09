import 'package:flutter/material.dart';

class TasbehViwe extends StatefulWidget {
  const TasbehViwe({super.key});

  @override
  State<TasbehViwe> createState() => _TasbehViweState();
}

class _TasbehViweState extends State<TasbehViwe> {
  int counter = 0;
  List<String> sebha = ["سبحان الله", "الحمدلله"];
  int index = 0;

  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/head of seb7a.png",
                width: mediaQuery.width * 0.1,
              ),
              AnimatedRotation(
                turns: turns,
                duration: Duration(seconds: 1),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      counter++;
                      if (counter == 30 && index == 0) {
                        index = 1;
                        counter = 0;
                      }
                      turns += 1 / 8;
                    });
                  },
                  child: Image.asset(
                    "assets/images/body of seb7a.png",
                    height: mediaQuery.height * 0.2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "عدد التسبيحات",
            style: TextStyle(fontSize: 25, fontFamily: "El Messiri"),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: mediaQuery.height * 0.06,
            width: mediaQuery.height * 0.08,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
            ),
            child: Text(
              "$counter",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: mediaQuery.height * 0.06,
            width: mediaQuery.height * 0.2,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
            ),
            child: Text(
              sebha[index],
              style: TextStyle(fontSize: 25, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
