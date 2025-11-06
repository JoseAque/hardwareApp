import 'package:flutter/material.dart';
import 'package:hardwareApp/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  final Function(String, double, String) onAddToCart;
  DonutTab({super.key, required this.onAddToCart});

  //List of donuts
  final List donutOnSale = [
    // donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    ['Chocolate', '75', Colors.brown, 'lib/images/chocolate_donut.png', 'Oxxo'],
    [
      'Strawberry',
      '100',
      Colors.red,
      'lib/images/strawberry_donut.png',
      'Starbucks',
    ],
    [
      'Grape',
      '80',
      Colors.purple,
      'lib/images/grape_donut.png',
      "Dunkin' Donuts",
    ],
    [
      'Ice Cream',
      '110',
      Colors.lightBlue,
      'lib/images/icecream_donut.png',
      'Krispy kreme',
    ],
    [
      'Azucaradas',
      '130', // Updated price
      Colors.pink,
      'lib/images/azucaradas.png',
      'Carls Junior',
    ],
    [
      'Choco Crema',
      '140', // Updated price
      Colors.brown,
      'lib/images/choco_crema.png',
      'Carls Junior',
    ],
    [
      'Chispas',
      '150', // Updated price
      Colors.orange,
      'lib/images/crema_chispas.png',
      'Carls Junior',
    ],
    [
      'Caramelo',
      '160', // Updated price
      Colors.amber,
      'lib/images/caramelo.png',
      'Carls Junior',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Se encarga de acomodar elementos dentro del grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.30,
      ),
      itemCount: donutOnSale.length,
      //Lo que se va a contruir en el grid(el contenido)
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          donutImagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4],
          onAddToCart: (name, price, imagePath) =>
              onAddToCart(name, price, imagePath),
        );
      },
    );
  }
}
