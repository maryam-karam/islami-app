import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/quran/page/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  const QuranDetailsView({super.key});

  static const String routName = "QuranDetailsView";

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetail;
    var mediaQuery = MediaQuery.of(context).size;

    var theme = Theme.of(context);
    loadData(args.suraNumber);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/main_background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامى"),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin: EdgeInsets.only(
            right: 20,
            left: 20,
            top: 30,
            bottom: 80,
          ),
          padding: EdgeInsets.only(
            right: 20,
            left: 20,
            top: 15,
            bottom: 15,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " سوره ${args.suraName}",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "El Messiri",
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle_filled_rounded,
                    size: 28,
                  ),
                ],
              ),
              Divider(
                color: theme.primaryColor,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    versesList[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  itemCount: versesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> versesList = [];

Future loadData(String suraNumber) async {
  String suraContent =
      await rootBundle.loadString("assets/files/$suraNumber.txt");
  versesList = suraContent.split("\n");
}
