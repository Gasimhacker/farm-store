import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';
import 'package:gasim_farm/components/plus_button.dart';

//This stateless widget creates a card that contains an image of the product,product name and product prize.
class FruitVegetableCard extends StatelessWidget {
  //any constant that starts with (K) is initialized in (constant.dart)file.
  final String fruitImage;
  final double prize;
  final String fruitName;

  // ignore: use_key_in_widget_constructors
  const FruitVegetableCard(
      {required this.fruitName, required this.prize, required this.fruitImage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        shadowColor: Colors.grey,
        child: Container(
          height: 160,
          width: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                fruitImage,
                height: 60,
                width: 80,
              ),
              Text(fruitName),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${prize.toString()}\$',
                    style: KMoneyTextStyle,
                  ),
                  PlusButton(
                    //Look into the components directory(plus_button.dart).
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
