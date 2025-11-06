import 'package:flutter/material.dart';
import 'package:donut_app/utils/materials_tile.dart';

class MaterialsTab extends StatelessWidget {
  final Function(String, double, String) onAddToCart;
  MaterialsTab({super.key, required this.onAddToCart});

  final List materialsOnSale = [
    [
      'Pintura Acrílica 1L',
      '380',
      Colors.red,
      'lib/images/tools/cinta metrica.png',
      'Comex',
    ],
    [
      'Tuberías PVC 1"',
      '120',
      Colors.blue,
      'lib/images/tools/taladro.png',
      'Dura',
    ],
    [
      'Cemento 50kg',
      '280',
      Colors.grey,
      'lib/images/tools/nivel laser.png',
      'Moctezuma',
    ],
    [
      'Hierro Ángulo 2"',
      '450',
      Colors.blueGrey,
      'lib/images/tools/sierramano.png',
      'Grupo Acerero',
    ],
    [
      'Madera Pino 2x4',
      '95',
      Colors.brown,
      'lib/images/tools/llaveinglesa.png',
      'Grupo Forestal',
    ],
    [
      'Cable Eléctrico #12',
      '85',
      Colors.yellow,
      'lib/images/tools/destornillador.png',
      'Condumex',
    ],
    [
      'Tubo Galvanizado 2"',
      '320',
      Colors.grey,
      'lib/images/tools/kit destornillador.png',
      'Tamsa',
    ],
    [
      'Drywall 5/8"',
      '180',
      Colors.white70,
      'lib/images/tools/pngegg.png',
      'Knauf',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.25,
      ),
      itemCount: materialsOnSale.length,
      itemBuilder: (context, index) {
        return MaterialsTile(
          itemName: materialsOnSale[index][0],
          itemPrice: materialsOnSale[index][1],
          itemColor: materialsOnSale[index][2],
          itemImagePath: materialsOnSale[index][3],
          itemBrand: materialsOnSale[index][4],
          onAddToCart: (name, price, imagePath) =>
              onAddToCart(name, price, imagePath),
        );
      },
    );
  }
}
