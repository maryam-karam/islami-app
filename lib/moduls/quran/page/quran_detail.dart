import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:islami_app/moduls/quran/page/quran_view.dart';
import 'package:provider/provider.dart';

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
    var vm = Provider.of<SettingsProvider>(context);

    loadData(args.suraNumber);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            vm.getBackGround(),
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
            color: vm.isDark()
                ? Color(0XFF141A2E).withOpacity(0.8)
                : Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " سوره ${args.suraName}",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: vm.isDark() ? Color(0XFFFACC1D) : Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.play_circle_filled_rounded,
                    size: 28,
                  ),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    versesList[index],
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: vm.isDark() ? Color(0XFFFACC1D) : Colors.black,
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
