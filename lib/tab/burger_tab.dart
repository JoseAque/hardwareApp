import 'package:flutter/material.dart';
import 'package:hardwareApp/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  final Function(String, double, String) onAddToCart;
  BurgerTab({super.key, required this.onAddToCart});

  //List of donuts
  final List burgerOnSale = [
    // donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    [
      'Clásica',
      '80', // Updated price
      Colors.brown,
      'lib/images/burger/hamburguesa_clásica.png',
      'Burger King',
    ],
    [
      'Con Huevo',
      '110', // Updated price
      Colors.grey,
      'lib/images/burger/hamburguesa_con_huevo.png',
      "Frank's",
    ],
    [
      'Pollo ',
      '90', // Updated price
      Colors.brown,
      'lib/images/burger/hamburguesa_de_pollo.png',
      "Kentoky",
    ],
    [
      'Frutal',
      '120', // Updated price
      Colors.red,
      'lib/images/burger/hamburguesa_frutal.png',
      'Krispy kreme',
    ],
    [
      'Hawaiiana',
      '120', // Updated price
      Colors.yellow,
      'lib/images/burger/hamburguesa_hawaiiana.png',
      'FastBurgers',
    ],
    [
      'Tocino',
      '120', // Updated price
      Colors.orange,
      'lib/images/burger/hamburguesa_tocino.png',
      'Carls Junior',
    ],
    [
      'Pizza Burger',
      '120', // Updated price
      Colors.brown,
      'lib/images/burger/pizzaburguer.png',
      'Fast Burger',
    ],
    [
      'Xtreme Burger',
      '120', // Updated price
      Colors.lightBlue,
      'lib/images/burger/xtreme_burguer.png',
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
      itemCount: burgerOnSale.length,
      //Lo que se va a contruir en el grid(el contenido)
      itemBuilder: (context, index) {
        return BurgerTile(
          donutFlavor: burgerOnSale[index][0],
          donutPrice: burgerOnSale[index][1],
          donutColor: burgerOnSale[index][2],
          donutImagePath: burgerOnSale[index][3],
          donutProvider: burgerOnSale[index][4],
          onAddToCart: (name, price, imagePath) =>
              onAddToCart(name, price, imagePath),
        );
      },
    );
  }
}
