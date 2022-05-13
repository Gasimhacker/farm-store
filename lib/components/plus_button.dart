import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//This widget creates a green button that has a white plus icon.
class PlusButton extends StatelessWidget {
  final Function onPressed;
  // ignore: use_key_in_widget_constructors
  const PlusButton({required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 30.0,
        height: 30.0,
      ),
      shape: const CircleBorder(),
      fillColor: Colors.green,
      onPressed: onPressed(),
      child: const Icon(
        FontAwesomeIcons.plus,
        color: Colors.white,
      ),
    );
  }
}
