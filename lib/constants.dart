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

double KTotalPrize = 0;
bool KAddToCartVisibility = false;

double mangoPrize = 50;
double bananaPrize = 10;
double orangePrize = 30;
double grapeFruitPrize = 40;
double melonPrize = 25;
double waterMelonPrize = 35;
double guavaPrize = 20;
double lemonPrize = 15;
double grapePrize = 45;
double buckthornPrize = 35;

double tomatoPrize = 50;
double carrotPrize = 10;
double pumpkinPrize = 30;
double onionPrize = 40;
double okraPrize = 25;
double eggPlantPrize = 35;
double cucumberPrize = 20;
double armenianCucumberPrize = 15;
double chilliPrize = 45;
double pepperPrize = 35;
