import 'package:flutter/material.dart';
import 'package:islami/hadithPage/hadithContant.dart';
import 'package:islami/hadithPage/hadithPage.dart';

// ignore: must_be_immutable
class haithDetails extends StatelessWidget {
  HadithContant hadith;
  haithDetails({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(hadithContant.routeName, arguments: hadith);
      },
      child: Text(
        
        textAlign: TextAlign.center,
        hadith.title,
      ),
    );
  }
}
