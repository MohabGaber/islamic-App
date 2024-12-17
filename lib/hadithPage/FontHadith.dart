import 'package:flutter/material.dart';

import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable, camel_case_types
class fontHadit extends StatelessWidget {
  String contant;
  fontHadit({super.key, required this.contant});

  @override
  Widget build(BuildContext context) {
    Provider.of<AppConfigProvider>(context);

    return Text(
      contant,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
