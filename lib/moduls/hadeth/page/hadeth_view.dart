import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadeth_details.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethData> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    if (allHadethContent.isEmpty) loadData();

    return Column(
      children: [
        Image.asset(
          "assets/images/hadeth_img.png",
          height: mediaQuery.height * 0.2,
        ),
        Divider(
          color: theme.primaryColor,
        ),
        const Text(
          "الأحاديث",
          style: TextStyle(
            fontSize: 25,
            fontFamily: "El Messiri",
            fontWeight: FontWeight.w600,
          ),
        ),
        Divider(
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadethDetails.routeName,
                  arguments: allHadethContent[index],
                );
              },
              child: Text(
                allHadethContent[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: "El Messiri"),
              ),
            ),
            itemCount: allHadethContent.length,
          ),
        ),
      ],
    );
  }

  Future<void> loadData() async {
    String hadethContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> allHadethList = hadethContent.split("#");

    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadeth = allHadethList[i].trim();

      int tittleIndex = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, tittleIndex);
      String content = singleHadeth.substring(tittleIndex + 1);

      HadethData hadethData = HadethData(
        title,
        content,
      );
      allHadethContent.add(hadethData);
    }
    setState(() {});
  }
}

class HadethData {
  String title;
  String content;

  HadethData(this.title, this.content);
}
