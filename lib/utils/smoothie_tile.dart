import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmoothieTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String donutImagePath;
  final String donutProvider;
  final Function(String, double, String) onAddToCart;

  const SmoothieTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.donutImagePath,
    required this.donutProvider,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            //Precio
            Row(
              //Poner a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18,
                  ),
                  child: Text(
                    "\$$donutPrice",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: donutColor[800],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
              child: SizedBox(
                width: 110, // Limita el ancho de la imagen
                height: 110, // Limita la altura de la imagen
                child: Image.asset(donutImagePath, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 5),
            Text(
              donutFlavor,
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[900],
              ),
            ),
            Text(
              donutProvider,
              style: GoogleFonts.roboto(fontSize: 18, color: Colors.grey[600]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Favorito
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(Icons.favorite, color: Colors.redAccent),
                  ),
                  //Agregar
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: TextButton(
                      onPressed: () {
                        final price = double.tryParse(donutPrice) ?? 0.0;
                        onAddToCart(donutFlavor, price, donutImagePath);
                      },
                      child: Text(
                        'Add',
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.underline,
                          color: Colors.grey[900],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
