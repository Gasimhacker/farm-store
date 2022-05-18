import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';
import 'package:gasim_farm/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';

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
      home: const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
