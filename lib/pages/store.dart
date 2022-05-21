import 'package:flutter/material.dart';
import 'package:gasim_farm/components/fruit_vegetables_card.dart';
import 'package:gasim_farm/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gasim_farm/pages/login.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);
//any constant that starts with (K) is initialized in (constant.dart)file.
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.logout_rounded),
          onPressed: () {
            signOut();
          },
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Store',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Card(
                      elevation: 10,
                      shape: KElevatedButtonBorder,
                      child: TabBar(
                        isScrollable: true,
                        indicator: ShapeDecoration(
                            shape: KElevatedButtonBorder,
                            color: KSelectedTabColor),
                        tabs: [
                          SizedBox(
                            width: 70,
                            child: Tab(
                              text: 'fruits',
                            ),
                          ),
                          Tab(
                            text: 'vegetables',
                          )
                        ],
                        labelColor: KSelectedTextColor,
                        unselectedLabelColor: KUnselectedTextColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Expanded(
                          child: ListView(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage: 'images/fruits/mango.jpg',
                                      prize: 50,
                                      fruitName: 'FRESH MANGO (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage: 'images/fruits/banana.jpg',
                                      prize: 10,
                                      fruitName: 'FRESH BANANA (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage: 'images/fruits/orange.jpg',
                                      prize: 30,
                                      fruitName: 'FRESH ORANGE (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/fruits/grape_fruit.jpg',
                                      prize: 40,
                                      fruitName: 'FRESH GRAPE FRUIT (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage: 'images/fruits/melon.jpg',
                                      prize: 25,
                                      fruitName: 'FRESH MELON (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/fruits/water_melon.jpg',
                                      prize: 35,
                                      fruitName: 'FRESH WATER MELON (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage: 'images/fruits/guava.jpg',
                                      prize: 20,
                                      fruitName: 'FRESH GUAVA (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage: 'images/fruits/lemon.jpg',
                                      prize: 15,
                                      fruitName: 'FRESH LEMON (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage: 'images/fruits/grape.jpg',
                                      prize: 45,
                                      fruitName: 'FRESH GRAPE (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/fruits/Persian Buckthorn.jpg',
                                      prize: 35,
                                      fruitName: 'FRESH BUCKTHORN (1kg)',
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/vegetables/tomato.jpg',
                                      prize: 50,
                                      fruitName: 'FRESH TOMATO (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/vegetables/carrot.jpg',
                                      prize: 10,
                                      fruitName: 'FRESH CARROT (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/vegetables/pumpkin.jpg',
                                      prize: 30,
                                      fruitName: 'FRESH PUMPKIN (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage: 'images/vegetables/onion.jpg',
                                      prize: 40,
                                      fruitName: 'FRESH ONION (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage: 'images/vegetables/okra.jpg',
                                      prize: 25,
                                      fruitName: 'FRESH OKRA (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/vegetables/egg_plant.jpg',
                                      prize: 35,
                                      fruitName: 'FRESH EGG PLANT (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/vegetables/cucumber.jpg',
                                      prize: 20,
                                      fruitName: 'FRESH CUCUMBER (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/vegetables/armenian-cucumber.jpg',
                                      prize: 15,
                                      fruitName:
                                          'FRESH ARMENIAN CUCUMBER (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/vegetables/chilli.jpg',
                                      prize: 45,
                                      fruitName: 'FRESH CHILLI (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      fruitImage:
                                          'images/vegetables/pepper.jpg',
                                      prize: 35,
                                      fruitName: 'FRESH PEPPER (1kg)',
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
