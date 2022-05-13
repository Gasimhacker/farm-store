import 'package:flutter/material.dart';
import 'package:gasim_farm/components/fruit_vegetables_card.dart';
import 'package:gasim_farm/components/change_color.dart';
import 'package:gasim_farm/constants.dart';
import 'package:gasim_farm/pages/vegetables_store.dart';

class FruitStore extends StatefulWidget {
  const FruitStore({Key? key}) : super(key: key);
//any constant that starts with (K) is initialized in (constant.dart)file.
  @override
  _FruitStoreState createState() => _FruitStoreState();
}

class _FruitStoreState extends State<FruitStore> {
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
                    primary: KSelectedButtonColor,
                    shape: KElevatedButtonBorder,
                  ),
                  onPressed: () {
                    setState(() {
                      // changeColor(Type
                      //     .fruit); //look into the components directory(change_color.dart).
                    });
                  },
                  child: Text(
                    'Fruits',
                    style: TextStyle(color: KSelectedTextColor),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: KUnselectedButtonColor,
                  shape: KElevatedButtonBorder,
                ),
                onPressed: () {
                  setState(() {
                    //look into the components directory(change_color.dart).
                    // changeColor(Type.vegetables);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VegetablesStore(),
                        ));
                  });
                },
                child: Text(
                  'Vegetables',
                  style: TextStyle(color: KUnselectedTextColor),
                ),
              ),
            ],
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
                  fruitImage: 'images/fruits/grape_fruit.jpg',
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
                  fruitImage: 'images/fruits/water_melon.jpg',
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
                  fruitImage: 'images/fruits/Persian Buckthorn.jpg',
                  prize: 35,
                  fruitName: 'FRESH BUCKTHORN (1kg)',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
