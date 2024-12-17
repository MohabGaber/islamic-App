import 'package:flutter/material.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class fontHadit extends StatelessWidget {
  String contant;
  fontHadit({required this.contant});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Text(
      contant,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
