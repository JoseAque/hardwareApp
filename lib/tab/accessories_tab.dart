import 'package:flutter/material.dart';
import 'package:donut_app/utils/accessories_tile.dart';

class AccessoriesTab extends StatelessWidget {
  final Function(String, double, String) onAddToCart;
  AccessoriesTab({super.key, required this.onAddToCart});

  final List accessoriesOnSale = [
    [
      'Clavos Surtidos 1kg',
      '65',
      Colors.blueGrey,
      'lib/images/tools/cinta metrica.png',
      'Truper',
    ],
    [
      'Tornillos Madera Surtidos',
      '120',
      Colors.grey,
      'lib/images/tools/taladro.png',
      'Hilti',
    ],
    [
      'Tuercas y Pernos',
      '95',
      Colors.indigo,
      'lib/images/tools/llaveinglesa.png',
      'Fula',
    ],
    [
      'Cinta de Embalaje',
      '45',
      Colors.brown,
      'lib/images/tools/sierramano.png',
      'Scotch',
    ],
    [
      'Malla de Seguridad',
      '280',
      Colors.green,
      'lib/images/tools/kit destornillador.png',
      'SikaFiber',
    ],
    [
      'Cadena de Acero',
      '350',
      Colors.blueGrey,
      'lib/images/tools/destornillador.png',
      'Acco',
    ],
    [
      'Correa de Sujeción',
      '180',
      Colors.orange,
      'lib/images/tools/nivel laser.png',
      'Ratchet',
    ],
    [
      'Remaches Industriales',
      '95',
      Colors.teal,
      'lib/images/tools/pngegg.png',
      'Rivnuts',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.25,
      ),
      itemCount: accessoriesOnSale.length,
      itemBuilder: (context, index) {
        return AccessoriesTile(
          itemName: accessoriesOnSale[index][0],
          itemPrice: accessoriesOnSale[index][1],
          itemColor: accessoriesOnSale[index][2],
          itemImagePath: accessoriesOnSale[index][3],
          itemBrand: accessoriesOnSale[index][4],
          onAddToCart: (name, price, imagePath) =>
              onAddToCart(name, price, imagePath),
        );
      },
    );
  }
}
