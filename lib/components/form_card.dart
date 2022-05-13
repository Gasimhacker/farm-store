import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';

//This widget creates a card that contains a textFormField widget.
class FormCard extends StatelessWidget {
  //any constant that starts with (K) is initialized in (constant.dart)file.
  final String labelText;
  final String hintText;
  final Icon prefixIcon;
  final bool obscureText;
  FormCard(
      {required this.labelText,
      required this.hintText,
      required this.prefixIcon,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        shadowColor: Colors.grey,
        elevation: 10,
        child: TextFormField(
            cursorColor: Colors.black54,
            obscureText: obscureText,
            keyboardType: TextInputType.emailAddress,
            decoration: KDropdownButtonDecoration.copyWith(
              prefixIcon: prefixIcon,
              labelText: labelText,
              hintText: hintText,
            )),
      ),
    );
  }
}
