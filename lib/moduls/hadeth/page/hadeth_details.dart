import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_view.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({super.key});

  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    final args = ModalRoute.of(context)!.settings.arguments as HadethData;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/main_background.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامى"),
        ),
        body: Container(
          height: mediaQuery.height,
          width: mediaQuery.width,
          padding: EdgeInsets.only(
            bottom: 50,
            top: 15,
            right: 10,
            left: 10,
          ),
          margin: EdgeInsets.only(
            bottom: 50,
            top: 15,
            right: 10,
            left: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "El Messiri",
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              Divider(
                color: theme.primaryColor,
              ),
              Text(
                args.content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "El Messiri",
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
