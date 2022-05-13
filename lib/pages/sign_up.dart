import 'package:flutter/material.dart';
import 'package:gasim_farm/components/colored_container.dart';
import 'package:gasim_farm/components/login_sign_up_button.dart';
import 'package:gasim_farm/components/form_card.dart';
import 'package:gasim_farm/constants.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);
//any constant that starts with (K) is initialized in (constant.dart)file.
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
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
                    //creates a text form field,look into components directory(form_card.dart).
                    hintText: 'Enter your first name',
                    obscureText: false,
                    prefixIcon: Icon(Icons.person),
                    labelText: 'First Name',
                  ),
                  FormCard(
                    hintText: 'Enter your last name',
                    obscureText: false,
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Last Name',
                  ),
                  FormCard(
                    obscureText: false,
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                    hintText: 'Enter Your Email',
                    labelText: 'Email Address',
                  ),
                  FormCard(
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
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    obscureText: false,
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                  ),
                  FormCard(
                    hintText: 'repeat your password',
                    labelText: 'confirm password',
                    obscureText: false,
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                  ),
                  LoginSignUpButton(
                      //Look into the components directory(login_sign_up_button.dart).
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
}
