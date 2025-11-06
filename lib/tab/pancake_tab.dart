import 'package:flutter/material.dart';
import 'package:donut_app/utils/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  final Function(String, double, String) onAddToCart;
  PancakeTab({super.key, required this.onAddToCart});

  //List of donuts
  final List pancakeOnSale = [
    ['Banana', '80', Colors.amber, 'lib/images/pancake/banana.png', 'Oxxo'],
    [
      'Cajeta',
      '120',
      Colors.deepOrange,
      'lib/images/pancake/cajeta.png',
      'Starbucks',
    ],
    [
      'Chocolate',
      '90',
      Colors.brown,
      'lib/images/pancake/chocolate.png',
      "Dunkin' Donuts",
    ],
    [
      'Cremabatida',
      '130',
      Colors.cyan,
      'lib/images/pancake/cremabatida.png',
      'Krispy kreme',
    ],
    [
      'Fresas',
      '115',
      Colors.redAccent,
      'lib/images/pancake/fresas.png',
      'Krispy kreme',
    ],
    [
      'Frutos Rojos',
      '125',
      Colors.pinkAccent,
      'lib/images/pancake/frutosrojos.png',
      'Krispy kreme',
    ],
    [
      'Mora Azul',
      '135',
      Colors.indigo,
      'lib/images/pancake/moraazul.png',
      'Krispy kreme',
    ],
    [
      'Sencillo',
      '140',
      Colors.lime,
      'lib/images/pancake/sencillos.png',
      'Krispy kreme',
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
      itemCount: pancakeOnSale.length,
      //Lo que se va a contruir en el grid(el contenido)
      itemBuilder: (context, index) {
        return PancakeTile(
          donutFlavor: pancakeOnSale[index][0],
          donutPrice: pancakeOnSale[index][1],
          donutColor: pancakeOnSale[index][2],
          donutImagePath: pancakeOnSale[index][3],
          donutProvider: pancakeOnSale[index][4],
          onAddToCart: (name, price, imagePath) =>
              onAddToCart(name, price, imagePath),
        );
      },
    );
  }
}
