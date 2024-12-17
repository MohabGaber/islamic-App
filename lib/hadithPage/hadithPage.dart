import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/hadithPage/hadithDetails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';

class hadithPage extends StatefulWidget {
  @override
  State<hadithPage> createState() => _hadithPageState();
}

class _hadithPageState extends State<hadithPage> {
  List<HadithContant> ahadith = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    if (ahadith.isEmpty) {
      LoadFiles();
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Expanded(flex: 1, child: Image.asset("assets/images/hadith_header.png")),
      Divider(
        color: provider.isDark() ? MyColors.yellow : MyColors.PrimeryColor,
        thickness: 2,
      ),
      Text(
        AppLocalizations.of(context)!.hadith_name,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Divider(
        color: provider.isDark() ? MyColors.yellow : MyColors.PrimeryColor,
        thickness: 2,
      ),
      Expanded(
        flex: 2,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return haithDetails(
                hadith: ahadith[index],
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 2,
                color:
                    provider.isDark() ? MyColors.yellow : MyColors.PrimeryColor,
              );
            },
            itemCount: ahadith.length),
      ),
    ]);
  }

  void LoadFiles() async {
    String hadithContant =
        await rootBundle.loadString("assets/images/files/ahadeth.txt");

    List<String> hadithList = hadithContant.split("#\r\n");
    for (int i = 0; i < hadithList.length; i++) {
      List<String> hadithLines = hadithList[i].split("\n");
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      HadithContant hadithContant =
          HadithContant(title: title, contant: hadithLines);
      ahadith.add(hadithContant);
      setState(() {});
    }
  }
}

class HadithContant {
  String title;
  List<String> contant = [];

  HadithContant({required this.title, required this.contant});
}
