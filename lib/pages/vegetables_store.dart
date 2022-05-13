import 'package:flutter/material.dart';
import 'package:gasim_farm/components/fruit_vegetables_card.dart';
import 'package:gasim_farm/components/change_color.dart';
import 'package:gasim_farm/constants.dart';
import 'package:gasim_farm/pages/store.dart';

class VegetablesStore extends StatefulWidget {
  const VegetablesStore({Key? key}) : super(key: key);
//any constant that starts with (K) is initialized in (constant.dart)file.
  @override
  _VegetablesStoreState createState() => _VegetablesStoreState();
}

class _VegetablesStoreState extends State<VegetablesStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          'Store',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 110,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: KUnselectedButtonColor,
                    shape: KElevatedButtonBorder,
                  ),
                  onPressed: () {
                    setState(() {
                      //look into the components directory(change_color.dart).
                      // changeColor(Type.fruit);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FruitStore(),
                          ));
                    });
                  },
                  child: Text(
                    'Fruits',
                    style: TextStyle(color: KUnselectedTextColor),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: KSelectedButtonColor,
                  shape: KElevatedButtonBorder,
                ),
                onPressed: () {
                  setState(() {
                    // changeColor(Type
                    //     .vegetables); //look into the components directory(change_color.dart).
                  });
                },
                child: Text(
                  'Vegetables',
                  style: TextStyle(color: KSelectedTextColor),
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(
                child: FruitVegetableCard(
                  fruitImage: 'images/vegetables/tomato.jpg',
                  prize: 50,
                  fruitName: 'FRESH TOMATO (1kg)',
                ),
              ),
              Expanded(
                child: FruitVegetableCard(
                  fruitImage: 'images/vegetables/carrot.jpg',
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
                  fruitImage: 'images/vegetables/pumpkin.jpg',
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
                  fruitImage: 'images/vegetables/egg_plant.jpg',
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
                  fruitImage: 'images/vegetables/cucumber.jpg',
                  prize: 20,
                  fruitName: 'FRESH CUCUMBER (1kg)',
                ),
              ),
              Expanded(
                child: FruitVegetableCard(
                  fruitImage: 'images/vegetables/armenian-cucumber.jpg',
                  prize: 15,
                  fruitName: 'FRESH ARMENIAN CUCUMBER (1kg)',
                ),
              )
            ],
          ),
          Row(
            children: const [
              Expanded(
                child: FruitVegetableCard(
                  fruitImage: 'images/vegetables/chilli.jpg',
                  prize: 45,
                  fruitName: 'FRESH CHILLI (1kg)',
                ),
              ),
              Expanded(
                child: FruitVegetableCard(
                  fruitImage: 'images/vegetables/pepper.jpg',
                  prize: 35,
                  fruitName: 'FRESH PEPPER (1kg)',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
