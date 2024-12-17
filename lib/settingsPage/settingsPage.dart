import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/settingsPage/LanguageButtom.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(AppLocalizations.of(context)!.languages),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                showLanguageButtomSheet();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColors.PrimeryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(provider.AppLanguage == "en"
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  void showLanguageButtomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => languagebuttom());
  }
}
