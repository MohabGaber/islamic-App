import 'package:flutter/material.dart';
import 'package:islami/QuranPage/suraDetails.dart';

// ignore: must_be_immutable
class itemSuraName extends StatelessWidget {
  String name;
  int index;
  itemSuraName({super.key, required this.name, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(suraDetails.routeName,
            arguments: suraDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
