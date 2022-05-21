import 'package:flutter/material.dart';
import 'package:gasim_farm/pages/store.dart';
import 'package:gasim_farm/constants.dart';

//This widget creates a button with a text containing (login/sign up) words.
class LoginSignUpButton extends StatelessWidget {
  //any constant that starts with (K) is initialized in (constant.dart)file.
  final String buttonType;
  final VoidCallback onPressed;
  LoginSignUpButton({required this.buttonType, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 130,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          primary: KLoginColor,
        ),
        child: Text(
          buttonType,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
