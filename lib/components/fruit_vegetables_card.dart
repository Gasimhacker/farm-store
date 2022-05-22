import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';
import 'package:gasim_farm/components/plus_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//This stateless widget creates a card that contains an image of the product,product name and product prize.
class FruitVegetableCard extends StatefulWidget {
  //any constant that starts with (K) is initialized in (constant.dart)file.
  final String image;
  double prize;
  final String name;
  // ignore: use_key_in_widget_constructors
  FruitVegetableCard({
    required this.name,
    required this.prize,
    required this.image,
  });

  @override
  State<FruitVegetableCard> createState() => _FruitVegetableCardState();
}

class _FruitVegetableCardState extends State<FruitVegetableCard> {
  double quantity = 0;
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
                widget.image,
                height: 60,
                width: 80,
              ),
              Text(widget.name),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${widget.prize.toString()}\$',
                    style: KMoneyTextStyle,
                  ),
                  Visibility(
                    child: Text(
                      '${quantity.toInt()}',
                      style: KMoneyTextStyle,
                    ),
                  ),
                  PlusMinusButton(
                    //Look into the components directory(plus_button.dart).
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      setState(() {
                        quantity++;
                        KTotalPrize += widget.prize;
                      });
                    },
                  ),
                  PlusMinusButton(
                    icon: FontAwesomeIcons.minus,
                    //Look into the components directory(plus_button.dart).
                    onPressed: () {
                      setState(() {
                        if (quantity != 0) {
                          quantity--;
                          KTotalPrize != 0
                              ? KTotalPrize -= widget.prize
                              : KTotalPrize = KTotalPrize;
                        }
                      });
                    },
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
