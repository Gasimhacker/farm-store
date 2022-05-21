import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';
import 'package:gasim_farm/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.grey)),
      home: AnimatedSplashScreen(
        duration: 3500,
        splash: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text('WELCOME TO OUR FARM'),
              ),
            ),
            Expanded(
              flex: 5,
              child: Image.asset(
                'images/splash.gif',
              ),
            ),
          ],
        ),
        nextScreen: Login(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
