import 'package:flutter/material.dart';
import 'package:islami/QuranPage/QuranPage.dart';
import 'package:islami/hadithPage/hadithPage.dart';
import 'package:islami/radioPage/radioPage.dart';
import 'package:islami/sebhaPage/sebhaPage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/settingsPage/settingsPage.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';

class homePage extends StatefulWidget {
  static String routeName = "homePage";

  @override
  State<homePage> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  int selectIndex = 0;
  List<Widget> tabs = [
    QuranPage(),
    hadithPage(),
    sebhapage(),
    const radioPage(),
    settingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Stack(
      children: [
        provider.isDark()
            ? Image.asset(
                "assets/images/home_dark_background.png",
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset(
                "assets/images/bg3.png",
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
        Scaffold(
          body: tabs[selectIndex],
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: selectIndex,
              onTap: (value) {
                selectIndex = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage("assets/images/quran_icn.png"),
                    ),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/hadith_icn.png"),
                  ),
                  label: AppLocalizations.of(context)!.hadith,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/sebha_icn.png"),
                  ),
                  label: AppLocalizations.of(context)!.sebha,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/radio_blue.png"),
                  ),
                  label: AppLocalizations.of(context)!.radio,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
