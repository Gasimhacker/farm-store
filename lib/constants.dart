import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const TextStyle KMoneyTextStyle =
    TextStyle(color: Colors.orangeAccent, fontSize: 20);
enum Type { fruit, vegetables }
Color KSelectedTabColor = Colors.orange;
Color KUnselectedButtonColor = Colors.white;
Color KUnselectedTextColor = Colors.grey;
Color KSelectedTextColor = Colors.white;

const Color KLoginColor = Color(0xFFFFA14A);
bool showContent = false;

const InputDecoration KDropdownButtonDecoration = InputDecoration(
    prefixIcon: Icon(FontAwesomeIcons.marsAndVenus),
    prefixIconColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.grey),
    hintStyle: TextStyle(color: Colors.grey),
    border: InputBorder.none);

OutlinedBorder KElevatedButtonBorder =
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
