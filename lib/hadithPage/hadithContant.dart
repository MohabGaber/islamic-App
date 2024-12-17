import 'package:flutter/material.dart';
import 'package:islami/hadithPage/FontHadith.dart';
import 'package:islami/hadithPage/hadithPage.dart';

class hadithContant extends StatefulWidget {
  static String routeName = '';

  @override
  State<hadithContant> createState() => _hadithContantState();
}

class _hadithContantState extends State<hadithContant> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadithContant;
    return Stack(
      children: [
        Image.asset(
          "assets/images/bg3.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 55),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Color(0xffF8F8F8),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return fontHadit(contant: args.contant[index]);
              },
              itemCount: args.contant.length,
            ),
          ),
        ),
      ],
    );
  }
}
