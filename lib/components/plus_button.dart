import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//This widget creates a green button that has a white plus icon.
class PlusMinusButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color color;
  // ignore: use_key_in_widget_constructors
  const PlusMinusButton(
      {required this.onPressed, required this.icon, required this.color});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 5,
      constraints: const BoxConstraints.tightFor(
        width: 30.0,
        height: 30.0,
      ),
      shape: const CircleBorder(),
      fillColor: color,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
