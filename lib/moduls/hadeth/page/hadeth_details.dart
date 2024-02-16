import 'package:flutter/material.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_view.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({super.key});

  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    final args = ModalRoute.of(context)!.settings.arguments as HadethData;
    var vm = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(vm.getBackGround()),
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
            color: vm.isDark()
                ? Color(0XFF141A2E).withOpacity(0.9)
                : Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: vm.isDark() ? Color(0XFFFACC1D) : Colors.black,
                ),
              ),
              Divider(),
              Text(
                args.content,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: vm.isDark() ? Color(0XFFFACC1D) : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
