import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  SettingsView({super.key});

  final List<String> languageList = [
    "English",
    "عربى",
  ];

  final List<String> themeMode = [
    "dark",
    "light",
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;

    var vm = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            lang.language,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(
            height: 10,
          ),
          CustomDropdown(
            items: languageList,
            //initial item =>دى عشان لما اجى اشوف اللغه االى انا حطاها ميكتليش select
            initialItem: vm.currentLanguage == "en"
                ?
                //if it true
                "English"
                :
                //if it false
                "عربى",
            decoration: CustomDropdownDecoration(
              expandedFillColor: vm.isDark() ? Color(0XFF141A2E) : Colors.white,
              closedFillColor: vm.isDark() ? Color(0XFF141A2E) : Colors.white,
            ),

            onChanged: (value) {
              if (value == "English") {
                vm.changLanguage("en");
              } else if (value == "عربى") {
                vm.changLanguage("ar");
              }
            },
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            lang.theme,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(
            height: 10,
          ),
          CustomDropdown(
            items: themeMode,
            initialItem: vm.isDark() ? "dark" : "light",
            decoration: CustomDropdownDecoration(
              expandedFillColor: vm.isDark() ? Color(0XFF141A2E) : Colors.white,
              closedFillColor: vm.isDark() ? Color(0XFF141A2E) : Colors.white,
            ),
            onChanged: (value) {
              if (value == "dark") {
                vm.changeTheme(ThemeMode.dark);
              } else if (value == "light") {
                vm.changeTheme(ThemeMode.light);
              }
            },
          ),
        ],
      ),
    );
  }
}
