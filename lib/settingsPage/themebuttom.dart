import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';

class themebuttom extends StatefulWidget {
  const themebuttom({super.key});

  @override
  State<themebuttom> createState() => _themebuttomState();
}

class _themebuttomState extends State<themebuttom> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.isDark()
                ? getSelectedTheme(AppLocalizations.of(context)!.dark)
                : unSelectedTheme(AppLocalizations.of(context)!.dark),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.isDark()
                ? unSelectedTheme(AppLocalizations.of(context)!.light)
                : getSelectedTheme(AppLocalizations.of(context)!.light),
          )
        ],
      ),
    );
  }

  Widget getSelectedTheme(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: MyColors.PrimeryColor),
        ),
        Icon(
          Icons.check,
          size: 35,
          color: MyColors.PrimeryColor,
        ),
      ],
    );
  }

  Widget unSelectedTheme(String text) {
    return Text(
      text,
    );
  }
}
