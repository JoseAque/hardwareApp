import 'package:flutter/material.dart';
import 'package:donut_app/utils/safety_tile.dart';

class SafetyTab extends StatelessWidget {
  final Function(String, double, String) onAddToCart;
  SafetyTab({super.key, required this.onAddToCart});

  final List safetyOnSale = [
    [
      'Casco de Seguridad',
      '180',
      Colors.orange,
      'lib/images/tools/cinta metrica.png',
      '3M',
    ],
    [
      'Guantes de Trabajo',
      '85',
      Colors.amber,
      'lib/images/tools/kit destornillador.png',
      'Wells Lamont',
    ],
    [
      'Gafas de Protección',
      '120',
      Colors.cyan,
      'lib/images/tools/llaveinglesa.png',
      'Honeywell',
    ],
    [
      'Chaleco Reflectivo',
      '150',
      Colors.yellow,
      'lib/images/tools/sierramano.png',
      'Traffic',
    ],
    [
      'Mascarilla N95',
      '45',
      Colors.white70,
      'lib/images/tools/destornillador.png',
      '3M',
    ],
    [
      'Botas de Seguridad',
      '420',
      Colors.brown,
      'lib/images/tools/taladro.png',
      'Caterpillar',
    ],
    [
      'Arnés de Seguridad',
      '650',
      Colors.red,
      'lib/images/tools/nivel laser.png',
      'Miller',
    ],
    [
      'Tapones para Oídos',
      '35',
      Colors.pink,
      'lib/images/tools/pngegg.png',
      'Moldex',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.25,
      ),
      itemCount: safetyOnSale.length,
      itemBuilder: (context, index) {
        return SafetyTile(
          itemName: safetyOnSale[index][0],
          itemPrice: safetyOnSale[index][1],
          itemColor: safetyOnSale[index][2],
          itemImagePath: safetyOnSale[index][3],
          itemBrand: safetyOnSale[index][4],
          onAddToCart: (name, price, imagePath) =>
              onAddToCart(name, price, imagePath),
        );
      },
    );
  }
}
