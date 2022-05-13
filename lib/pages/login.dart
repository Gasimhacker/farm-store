import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';
import 'package:gasim_farm/pages/sign_up.dart';
import 'package:gasim_farm/pages/store.dart';
import 'package:gasim_farm/components/form_card.dart';
import 'package:gasim_farm/components/colored_container.dart';
import 'package:gasim_farm/components/login_sign_up_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
//any constant that starts with (K) is initialized in (constant.dart)file.
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(
          children: <Widget>[
            ColoredContainer(
              //Look into the components directory (colored_container.dart).
              assetImage: 'images/login.gif',
              title: 'Login',
            ),
            SizedBox(
              height: 10,
            ),
            FormCard(
              //creates a text form field,look into the components directory(form_card.dart).
              obscureText: false,
              prefixIcon: Icon(
                Icons.mail,
                color: Colors.grey,
              ),
              hintText: 'Enter Your Email',
              labelText: 'Email Address',
            ),
            FormCard(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: Icon(Icons.vpn_key),
                obscureText: true),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?!',
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Sign Up',
                          style: const TextStyle(
                              color: Colors.deepOrange, fontSize: 20),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyForm(),
                                  ));
                            })
                    ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            LoginSignUpButton(
              //Look into the components directory(login_sign_up_button.dart).
              buttonType: 'Login',
            ),
            Visibility(
                visible: showContent,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: const CircularProgressIndicator(
                    color: KLoginColor,
                  ),
                ))
          ],
        ),
      ]),
    );
  }
}
