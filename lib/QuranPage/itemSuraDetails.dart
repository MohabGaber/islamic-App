import 'package:flutter/material.dart';

// ignore: must_be_immutable
class itemSuraDetails extends StatelessWidget {
  String contant;
  int index;
  itemSuraDetails({super.key, required this.contant, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$contant (${index + 1})",
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
