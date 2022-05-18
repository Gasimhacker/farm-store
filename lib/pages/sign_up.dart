import 'package:flutter/material.dart';
import 'package:gasim_farm/components/colored_container.dart';
import 'package:gasim_farm/components/login_sign_up_button.dart';
import 'package:gasim_farm/components/form_card.dart';
import 'package:gasim_farm/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gasim_farm/pages/store.dart';
import 'package:gasim_farm/user_model.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);
//any constant that starts with (K) is initialized in (constant.dart)file.
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _auth = FirebaseAuth.instance;

  // string for displaying the error Message
  String? errorMessage;
  final firstName = new TextEditingController();
  final lastName = new TextEditingController();
  final email = new TextEditingController();
  final password = new TextEditingController();
  final confirmPassword = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String genderSelectedValue = 'Gender';
  var genders = ['male', 'female', 'Gender'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F8FA),
        body: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ColoredContainer(
                    //Look into the components directory (colored_container.dart).
                    assetImage: 'images/sign_up.gif',
                    title: 'Sign up',
                  ),
                  FormCard(
                    validationMessage: 'please enter your first name',
                    keyboardType: TextInputType.name,
                    regExp: RegExp(r'^.{3,}$'),
                    regExpMessage: 'Enter Valid name(Min.3 Character)',
                    controller: firstName,
                    //creates a text form field,look into components directory(form_card.dart).
                    hintText: 'Enter your first name',
                    obscureText: false,
                    prefixIcon: Icon(Icons.person),
                    labelText: 'First Name',
                  ),
                  FormCard(
                    validationMessage: 'please enter your last name',
                    keyboardType: TextInputType.name,
                    regExp: RegExp(r'^.{3,}$'),
                    regExpMessage: 'Enter Valid name(Min. 3 Character)',
                    controller: lastName,
                    hintText: 'Enter your last name',
                    obscureText: false,
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Last Name',
                  ),
                  FormCard(
                    regExp: RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]"),
                    regExpMessage: 'Enter a valid email address',
                    validationMessage: 'please enter your email address',
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                    obscureText: false,
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                    hintText: 'Enter Your Email',
                    labelText: 'Email Address',
                  ),
                  FormCard(
                    validationMessage: 'please enter your birthdate',
                    keyboardType: TextInputType.datetime,
                    hintText: 'Enter your date of birth',
                    obscureText: false,
                    prefixIcon: Icon(Icons.calendar_today),
                    labelText: 'Date Of Birth',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      shadowColor: Colors.grey,
                      elevation: 10,
                      child: DropdownButtonFormField(
                        decoration: KDropdownButtonDecoration,
                        icon: Icon(Icons.keyboard_arrow_down),
                        value: genderSelectedValue,
                        items: genders.map((String genders) {
                          return DropdownMenuItem(
                              value: genders,
                              child: Text(
                                genders,
                              ));
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            genderSelectedValue = newValue.toString();
                          });
                        },
                      ),
                    ),
                  ),
                  FormCard(
                    regExp: RegExp(r'^.{6,}$'),
                    regExpMessage: 'Enter Valid Password(Min.6 Character)',
                    validationMessage: 'please enter your password',
                    controller: password,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    obscureText: false,
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                  ),
                  FormCard(
                    passwordConfirm: () {
                      if (password.text != confirmPassword.text) {
                        return "Password does not match";
                      }
                    },
                    validationMessage: 'please repeat your password',
                    regExp: RegExp(r'^.{6,}$'),
                    regExpMessage: 'Enter Valid Password(Min.6 Character)',
                    hintText: 'repeat your password',
                    labelText: 'confirm password',
                    obscureText: false,
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                  ),
                  LoginSignUpButton(
                      //Look into the components directory(login_sign_up_button.dart).
                      onPressed: () {
                        signUp(email.text, password.text);
                      },
                      buttonType: 'Sign up'),
                  Visibility(
                      visible: false,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: const CircularProgressIndicator(
                          color: KLoginColor,
                        ),
                      )),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {postDetailsToFirestore()})
            .catchError((e) {
          // Fluttertoast.showToast(msg: e!.message);
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
    }
  }

  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    // writing all the values
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.firstName = firstName.text;
    userModel.secondName = lastName.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    // Fluttertoast.showToast(msg: "Account created successfully :) ");

    Navigator.pushAndRemoveUntil((context),
        MaterialPageRoute(builder: (context) => Store()), (route) => false);
  }
}
