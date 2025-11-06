import 'package:flutter/material.dart';
import 'package:donut_app/utils/tools_tile.dart';

class ToolsTab extends StatelessWidget {
  final Function(String, double, String) onAddToCart;
  ToolsTab({super.key, required this.onAddToCart});

  final List toolsOnSale = [
    [
      'Juego de Brocas',
      '280',
      Colors.indigo,
      'lib/images/tools/kit destornillador.png',
      'DeWalt',
    ],
    [
      'Set de Llaves',
      '450',
      Colors.teal,
      'lib/images/tools/llaveinglesa.png',
      'Craftsman',
    ],
    [
      'Soldador Eléctrico',
      '3200',
      Colors.lime,
      'lib/images/tools/taladro.png',
      'Lincoln',
    ],
    [
      'Compresor de Aire',
      '2500',
      Colors.cyan,
      'lib/images/tools/cinta metrica.png',
      'Schulz',
    ],
    [
      'Set de Cinceles',
      '350',
      Colors.pink,
      'lib/images/tools/sierramano.png',
      'Stanley',
    ],
    [
      'Lámpara de Trabajo LED',
      '420',
      Colors.yellow,
      'lib/images/tools/nivel laser.png',
      'Makita',
    ],
    [
      'Fresadora',
      '4500',
      Colors.deepOrange,
      'lib/images/tools/destornillador.png',
      'Bosch',
    ],
    [
      'Amoladora Angular',
      '890',
      Colors.lightBlue,
      'lib/images/tools/pngegg.png',
      'DeWalt',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.25,
      ),
      itemCount: toolsOnSale.length,
      itemBuilder: (context, index) {
        return ToolsTile(
          itemName: toolsOnSale[index][0],
          itemPrice: toolsOnSale[index][1],
          itemColor: toolsOnSale[index][2],
          itemImagePath: toolsOnSale[index][3],
          itemBrand: toolsOnSale[index][4],
          onAddToCart: (name, price, imagePath) =>
              onAddToCart(name, price, imagePath),
        );
      },
    );
  }
}
