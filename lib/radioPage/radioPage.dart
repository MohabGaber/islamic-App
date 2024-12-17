import 'package:flutter/material.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';

class radioPage extends StatelessWidget {
  const radioPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
        SizedBox(
          height: 130,
        ),
        Image.asset("assets/images/radio.png"),
        SizedBox(
          height: 70,
        ),
        Text("اذاعة القران الكريم"),
        SizedBox(
          height: 70,
        ),
        Divider(
          thickness: 2,
          color: provider.isDark() ? MyColors.yellow : MyColors.PrimeryColor,
        ),
        provider.isDark()
            ? Image.asset(
                "assets/images/Group 5.png",
              )
            : Image.asset(
                "assets/images/Group radio.png",
              ),
        Divider(
          thickness: 2,
          color: provider.isDark() ? MyColors.yellow : MyColors.PrimeryColor,
        ),
      ],
    );
  }
}
