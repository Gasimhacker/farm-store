import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';
import 'package:gasim_farm/pages/login.dart';
import 'package:gasim_farm/pages/sign_up.dart';
import 'package:gasim_farm/pages/store.dart';
import 'package:gasim_farm/components/form_card.dart';
import 'package:gasim_farm/components/colored_container.dart';
import 'package:gasim_farm/components/login_sign_up_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
//any constant that starts with (K) is initialized in (constant.dart)file.

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? errorMessage;
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController =
      new TextEditingController(); // EMAIL
  final TextEditingController passwordController =
      new TextEditingController(); // Password
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Form(
          key: _formKey,
          child: Column(
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
                validationMessage: 'please enter your email address',
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                regExp: RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]"),
                regExpMessage: 'Enter a valid email address',
                obscureText: false,
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                hintText: 'Enter Your Email',
                labelText: 'Email Address',
              ),
              FormCard(
                  validationMessage: 'please enter your password',
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  regExp: RegExp(r'^.{6,}$'),
                  regExpMessage: 'Enter Valid Password(Min.6 Character)',
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
                onPressed: () {
                  signIn(emailController.text, passwordController.text);
                },
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
        ),
      ]),
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        showContent = true;
      });
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
                  // Fluttertoast.showToast(msg: "Login Successful"),
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Store())),
                  setState(() {
                    showContent = false;
                  })
                });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";

            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        // Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    } else {
      setState(() {
        showContent = false;
      });
    }
  }
}
