import 'package:flutter/material.dart';
import 'package:islami/hadithPage/hadithContant.dart';
import 'package:islami/homePage.dart';
import 'package:islami/QuranPage/suraDetails.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';
import 'ThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'ThemeData.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: const islami()));
}

class islami extends StatelessWidget {
  const islami({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homePage.routeName,
      routes: {
        homePage.routeName: (context) => homePage(),
        suraDetails.routeName: (context) => suraDetails(),
        hadithContant.routeName: (context) => hadithContant(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.AppLanguage),
      theme: MyThemeData.lightMode,
      themeMode: provider.appTheme,
      darkTheme: MyThemeData.darkMode,
    );
  }
}
