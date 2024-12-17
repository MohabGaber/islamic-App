import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/QuranPage/itemSuraDetails.dart';

class suraDetails extends StatefulWidget {
  static String routeName = "suraDetails";

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

// ignore: camel_case_types
class _suraDetailsState extends State<suraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;
    if (verses.isEmpty) {
      LoadFile(args.index);
    }
    return Stack(children: [
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
            args.name,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: MyColors.PrimeryColor,
                ),
              )
            : Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.07),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF8F8F8),
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 2,
                      color: MyColors.PrimeryColor,
                    );
                  },
                  itemBuilder: (context, index) {
                    return itemSuraDetails(
                      contant: verses[index],
                      index: index,
                    );
                  },
                  itemCount: verses.length,
                ),
              ),
      )
    ]);
  }

  // ignore: non_constant_identifier_names
  void LoadFile(int index) async {
    String contant =
        await rootBundle.loadString("assets/images/files/${index + 1}.txt");

    List<String> Lines = contant.split("\n");

    verses = Lines;
    setState(() {});
  }
}

// ignore: camel_case_types
class suraDetailsArgs {
  String name;
  int index;
  suraDetailsArgs({required this.name, required this.index});
}
