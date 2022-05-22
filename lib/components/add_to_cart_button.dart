import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      elevation: 5,
      onPressed: () {
        Alert(
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please pay to this (Bankak) account \=>(2145950) With name (Mohammed Ahmed Gasim) ',
                style: TextStyle(color: KLoginColor),
              ),
              Text(
                'and press on Buy Button',
                style: TextStyle(color: KLoginColor),
              )
            ],
          ),
          image: Image.asset('images/payment.jpg'),
          context: context,
          title: "Payment",
          desc: "Your total price is $KTotalPrize ",
          buttons: [
            DialogButton(
              child: Text(
                "CANCEL",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.red,
            ),
            DialogButton(
              child: Text(
                "BUY",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
                Alert(
                        context: context,
                        title: "Payment",
                        desc:
                            "We will check your payment and contact you \n through your phone number \n to deliver your orders\n thanks for buying from us.")
                    .show();
              },
              gradient: LinearGradient(colors: [
                Color.fromRGBO(116, 116, 191, 1.0),
                Color.fromRGBO(52, 138, 199, 1.0)
              ]),
            )
          ],
        ).show();
      },
      child: Icon(
        Icons.add_shopping_cart_outlined,
        color: KLoginColor,
      ),
    );
  }
}
