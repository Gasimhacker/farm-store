import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';

//This widget creates a card that contains a textFormField widget.
class FormCard extends StatelessWidget {
  //any constant that starts with (K) is initialized in (constant.dart)file.
  final String labelText;
  final String hintText;
  final Icon prefixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final RegExp? regExp;
  final String? regExpMessage;
  final TextInputType? keyboardType;
  final String validationMessage;
  final Function?
      passwordConfirm; //will be used in the sign up form when confirming password
  FormCard(
      {required this.labelText,
      required this.hintText,
      required this.prefixIcon,
      required this.obscureText,
      this.regExp,
      this.regExpMessage,
      this.controller,
      this.keyboardType,
      required this.validationMessage,
      this.passwordConfirm});

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
            controller: controller,
            onSaved: (value) {
              controller?.text = value!; // GETTING the value of edit text
            },
            validator: (value) {
              if (value!.isEmpty) {
                return validationMessage;
              } else if (regExp!.hasMatch(value)) {
                return (regExpMessage);
              } else {
                passwordConfirm;
                return null;
              }
            },
            cursorColor: Colors.black54,
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: KDropdownButtonDecoration.copyWith(
              prefixIcon: prefixIcon,
              labelText: labelText,
              hintText: hintText,
            )),
      ),
    );
  }
}
