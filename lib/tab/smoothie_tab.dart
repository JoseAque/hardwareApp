import 'package:flutter/material.dart';
import 'package:hardwareApp/utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  final Function(String, double, String) onAddToCart;
  SmoothieTab({super.key, required this.onAddToCart});

  //List of donuts
  final List smoothieOnSale = [
    // donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    ['Fresas', '80', Colors.red, 'lib/images/smoothie/fresas.png', 'Oxxo'],
    [
      'Frutos Rojos',
      '120',
      Colors.deepPurple,
      'lib/images/smoothie/frutosrojos.png',
      'Starbucks',
    ],
    [
      'Mango',
      '90',
      Colors.orange,
      'lib/images/smoothie/mango.png',
      "Dunkin' Donuts",
    ],
    [
      'Matcha',
      '130',
      Colors.green,
      'lib/images/smoothie/matcha.png',
      'Krispy kreme',
    ],
    [
      'Mora Azul',
      '130',
      Colors.blue,
      'lib/images/smoothie/moraazul.png',
      'Krispy kreme',
    ],
    [
      'Piña',
      '130',
      Colors.yellow,
      'lib/images/smoothie/piña.png',
      'Krispy kreme',
    ],
    [
      'Pitahaya',
      '130',
      Colors.pink,
      'lib/images/smoothie/pitahaya.png',
      'Krispy kreme',
    ],
    [
      'Plátano',
      '130',
      Colors.amber,
      'lib/images/smoothie/plátano.png',
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
      itemCount: smoothieOnSale.length,
      //Lo que se va a contruir en el grid(el contenido)
      itemBuilder: (context, index) {
        return SmoothieTile(
          donutFlavor: smoothieOnSale[index][0],
          donutPrice: smoothieOnSale[index][1],
          donutColor: smoothieOnSale[index][2],
          donutImagePath: smoothieOnSale[index][3],
          donutProvider: smoothieOnSale[index][4],
          onAddToCart: (name, price, imagePath) =>
              onAddToCart(name, price, imagePath),
        );
      },
    );
  }
}
