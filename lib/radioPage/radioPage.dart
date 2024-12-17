import 'package:flutter/material.dart';
import 'package:islami/MyColors.dart';

class radioPage extends StatelessWidget {
  const radioPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          color: MyColors.PrimeryColor,
        ),
        Image.asset("assets/images/Group radio.png"),
        Divider(
          thickness: 2,
          color: MyColors.PrimeryColor,
        ),
      ],
    );
  }
}
