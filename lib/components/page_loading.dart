import 'package:flutter/material.dart';
import 'package:gasim_farm/constants.dart';

import '../pages/store.dart';

class PageLoading extends StatefulWidget {
  const PageLoading({Key? key}) : super(key: key);

  @override
  _PageLoadingState createState() => _PageLoadingState();
}

class _PageLoadingState extends State<PageLoading> {
  void pageLoading() {
    setState(() {
      showContent = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showContent = false;
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FruitStore(),
            ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
