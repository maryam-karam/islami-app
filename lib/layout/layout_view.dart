import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_view.dart';
import 'package:islami_app/moduls/quran/page/quran_view.dart';
import 'package:islami_app/moduls/radio/page/radio_view.dart';
import 'package:islami_app/moduls/settings/page/settings_view.dart';
import 'package:islami_app/moduls/tasbeh/page/tasbeh_view.dart';

class LayoutView extends StatefulWidget {

  LayoutView({super.key,});

  static const String routName = "Layout";

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehViwe(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/main_background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png"),),
                label: "quran"
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadeth.png"),),
                label: "hadeth"
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha_blue.png"),),
                label: "tasbeh"
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_blue.png"),),
                label: "radio"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "settings"
            ),


          ],
        ),
      ),
    );
  }
}
