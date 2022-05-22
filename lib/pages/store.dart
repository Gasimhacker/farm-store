import 'package:flutter/material.dart';
import 'package:gasim_farm/components/fruit_vegetables_card.dart';
import 'package:gasim_farm/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gasim_farm/pages/login.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:gasim_farm/components/add_to_cart_button.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);
//any constant that starts with (K) is initialized in (constant.dart)file.
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  SignOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddToCartButton(),
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.logout_rounded),
          onPressed: () {
            SignOut();
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
                                children: [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/fruits/mango.jpg',
                                      prize: mangoPrize,
                                      name: 'FRESH MANGO (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/fruits/banana.jpg',
                                      prize: bananaPrize,
                                      name: 'FRESH BANANA (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/fruits/orange.jpg',
                                      prize: orangePrize,
                                      name: 'FRESH ORANGE (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/fruits/grape_fruit.jpg',
                                      prize: grapeFruitPrize,
                                      name: 'FRESH GRAPE FRUIT (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/fruits/melon.jpg',
                                      prize: melonPrize,
                                      name: 'FRESH MELON (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/fruits/water_melon.jpg',
                                      prize: waterMelonPrize,
                                      name: 'FRESH WATER MELON (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/fruits/guava.jpg',
                                      prize: guavaPrize,
                                      name: 'FRESH GUAVA (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/fruits/lemon.jpg',
                                      prize: lemonPrize,
                                      name: 'FRESH LEMON (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/fruits/grape.jpg',
                                      prize: grapePrize,
                                      name: 'FRESH GRAPE (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image:
                                          'images/fruits/Persian Buckthorn.jpg',
                                      prize: buckthornPrize,
                                      name: 'FRESH BUCKTHORN (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              )
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
                                children: [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/vegetables/tomato.jpg',
                                      prize: 50,
                                      name: 'FRESH TOMATO (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/vegetables/carrot.jpg',
                                      prize: 10,
                                      name: 'FRESH CARROT (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/vegetables/pumpkin.jpg',
                                      prize: pumpkinPrize,
                                      name: 'FRESH PUMPKIN (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/vegetables/onion.jpg',
                                      prize: onionPrize,
                                      name: 'FRESH ONION (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/vegetables/okra.jpg',
                                      prize: okraPrize,
                                      name: 'FRESH OKRA (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/vegetables/egg_plant.jpg',
                                      prize: eggPlantPrize,
                                      name: 'FRESH EGG PLANT (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/vegetables/cucumber.jpg',
                                      prize: cucumberPrize,
                                      name: 'FRESH CUCUMBER (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image:
                                          'images/vegetables/armenian-cucumber.jpg',
                                      prize: armenianCucumberPrize,
                                      name: 'FRESH ARMENIAN CUCUMBER (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/vegetables/chilli.jpg',
                                      prize: chilliPrize,
                                      name: 'FRESH CHILLI (1kg)',
                                    ),
                                  ),
                                  Expanded(
                                    child: FruitVegetableCard(
                                      image: 'images/vegetables/pepper.jpg',
                                      prize: pepperPrize,
                                      name: 'FRESH PEPPER (1kg)',
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              )
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
