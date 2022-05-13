import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';

//This widget creates a colored container with a circle avatar and a text .
class ColoredContainer extends StatelessWidget {
  //any constant that starts with (K) is initialized in (constant.dart)file.
  final String assetImage;
  final String title;
  ColoredContainer({required this.assetImage, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: KLoginColor),
      height: 250,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(assetImage),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 25),
          )
        ],
      ),
    );
  }
}
