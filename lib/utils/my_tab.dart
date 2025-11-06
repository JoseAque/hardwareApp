import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String iconName;
  const MyTab({super.key, required this.iconPath, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // contenedor solo para la imagen
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF424242),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Image.asset(iconPath, color: Color(0xFFFFFFFF)),
          ),
          const SizedBox(height: 10),
          // texto colocado debajo del contenedor
          Text(
            iconName,
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: Color(0xFF212121),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
