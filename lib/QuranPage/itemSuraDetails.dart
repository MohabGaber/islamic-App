import 'package:flutter/material.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class itemSuraDetails extends StatelessWidget {
  String contant;
  int index;
  itemSuraDetails({super.key, required this.contant, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Text(
      "$contant (${index + 1})",
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
