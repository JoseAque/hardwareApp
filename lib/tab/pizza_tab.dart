import 'package:flutter/material.dart';
import 'package:hardwareApp/utils/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  final Function(String, double, String) onAddToCart;
  PizzaTab({super.key, required this.onAddToCart});

  //List of donuts
  final List pizzaOnSale = [
    // donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    [
      'Champiñon',
      '80', // Changed price
      Colors.blueGrey,
      'lib/images/pizza/champiñones.png',
      'Super Pizza',
    ],
    [
      'Hawaiiana',
      '120', // Changed price
      Colors.lightGreen,
      'lib/images/pizza/hawaiiana.png',
      'Dominos',
    ],
    [
      'Pastor',
      '90',
      Colors.red,
      'lib/images/pizza/pastor.png',
      "Dominos",
    ], // Changed price
    [
      'Pepperoni',
      '100', // Changed price
      Colors.redAccent,
      'lib/images/pizza/pepperoni.png',
      "Little Caesars'",
    ],
    [
      'Carne',
      '130', // Changed price
      Colors.grey,
      'lib/images/pizza/carne.png',
      "Little Caesars'",
    ],
    [
      'Cuatro Quesos',
      '110', // Changed price
      Colors.yellow,
      'lib/images/pizza/pizza_cuatro_quesos.png',
      "Little Caesars'",
    ],
    [
      'Vegana',
      '129',
      Colors.green,
      'lib/images/pizza/vegana.png',
      "Dominos",
    ], // Changed price
    [
      'Vegetariana',
      '135', // Changed price
      Colors.lightGreen,
      'lib/images/pizza/vegetariana.png',
      "Little Caesars'",
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
      itemCount: pizzaOnSale.length,
      //Lo que se va a contruir en el grid(el contenido)
      itemBuilder: (context, index) {
        return PizzaTile(
          donutFlavor: pizzaOnSale[index][0],
          donutPrice: pizzaOnSale[index][1],
          donutColor: pizzaOnSale[index][2],
          donutImagePath: pizzaOnSale[index][3],
          donutProvider: pizzaOnSale[index][4],
          onAddToCart: (name, price, imagePath) =>
              onAddToCart(name, price, imagePath),
        );
      },
    );
  }
}
