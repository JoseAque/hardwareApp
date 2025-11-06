import 'package:flutter/material.dart';
import 'package:hardwareApp/utils/hardware_tile.dart';

class HardwareTab extends StatelessWidget {
  final Function(String, double, String) onAddToCart;
  HardwareTab({super.key, required this.onAddToCart});

  //List of hardware items
  final List hardwareOnSale = [
    // name, price, color, imagePath, brand
    [
      'Martillo',
      '250',
      Colors.blue,
      'lib/images/tools/destornillador.png',
      'Stanley',
    ],
    [
      'Destornillador Set',
      '180',
      Colors.red,
      'lib/images/tools/kit destornillador.png',
      'Bosch',
    ],
    [
      'Llave Inglesa',
      '150',
      Colors.grey,
      'lib/images/tools/llaveinglesa.png',
      'Truper',
    ],
    [
      'Taladro',
      '1200',
      Colors.orange,
      'lib/images/tools/taladro.png',
      'Black+Decker',
    ],
    [
      'Sierra Manual',
      '320',
      Colors.brown,
      'lib/images/tools/sierramano.png',
      'Stanley',
    ],
    [
      'Nivel Láser',
      '890',
      Colors.green,
      'lib/images/tools/nivel laser.png',
      'Bosch',
    ],
    [
      'Destornillador Eléctrico',
      '580',
      Colors.purple,
      'lib/images/tools/pngegg.png',
      'Makita',
    ],
    [
      'Cinta Métrica',
      '120',
      Colors.amber,
      'lib/images/tools/cinta metrica.png',
      'Stanley',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.25,
      ),
      itemCount: hardwareOnSale.length,
      itemBuilder: (context, index) {
        return HardwareTile(
          itemName: hardwareOnSale[index][0],
          itemPrice: hardwareOnSale[index][1],
          itemColor: hardwareOnSale[index][2],
          itemImagePath: hardwareOnSale[index][3],
          itemBrand: hardwareOnSale[index][4],
          onAddToCart: (name, price, imagePath) =>
              onAddToCart(name, price, imagePath),
        );
      },
    );
  }
}
