import 'package:flutter/material.dart';
import 'package:hardwareApp/utils/my_tab.dart';
import 'package:hardwareApp/tab/tools_tab.dart';
import 'package:hardwareApp/tab/hardware_tab.dart';
import 'package:hardwareApp/tab/safety_tab.dart';
import 'package:hardwareApp/tab/materials_tab.dart';
import 'package:hardwareApp/tab/accessories_tab.dart';
import 'package:hardwareApp/utils/cart_item.dart';
import 'package:hardwareApp/utils/cart_bottom_sheet.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CartItem> cartItems = [];

  //Getters para el contador y total
  int get itemCount => cartItems.fold(0, (sum, item) => sum + item.quantity);
  double get totalPrice =>
      cartItems.fold(0.0, (sum, item) => sum + (item.price * item.quantity));

  //Función para agregar items al carrito
  void addToCart(String name, double price, String imagePath) {
    setState(() {
      //Buscar si el producto ya está en el carrito
      final existingItemIndex = cartItems.indexWhere(
        (item) => item.name == name,
      );

      if (existingItemIndex != -1) {
        //Si ya existe, incrementar la cantidad
        cartItems[existingItemIndex].quantity++;
      } else {
        //Si no existe, agregarlo
        cartItems.add(
          CartItem(name: name, price: price, imagePath: imagePath, quantity: 1),
        );
      }
    });
  }

  //Función para mostrar el carrito
  void showCart() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => CartBottomSheet(
        cartItems: cartItems,
        onCartUpdated: () => setState(() {}),
      ),
    );
  }

  //Función para manejar el menú del perfil
  void _showProfileMenu() {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(300, 80, 0, 0),
      items: [
        PopupMenuItem(
          child: Row(
            children: [
              Icon(Icons.logout, color: Color(0xFFE65100)),
              SizedBox(width: 12),
              Text('Logout'),
            ],
          ),
          onTap: () {
            // Navegar al login y remover todas las rutas anteriores
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/login',
              (route) => false,
            );
          },
        ),
      ],
    );
  }

  List<Widget> myTabs = [
    //hardware tab
    MyTab(iconPath: 'lib/icons/tool-box.png', iconName: 'Tools'),
    //tools tab
    MyTab(iconPath: 'lib/icons/tools.png', iconName: 'Equipment'),
    //materials tab
    MyTab(iconPath: 'lib/icons/worker.png', iconName: 'Materials'),
    //safety tab
    MyTab(iconPath: 'lib/icons/protective-clothing.png', iconName: 'Safety'),
    //accessories tab
    MyTab(iconPath: 'lib/icons/membrane.png', iconName: 'Parts'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        appBar: AppBar(
          backgroundColor: Color(0xFF212121),
          elevation: 0,
          //Icono derecho
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: const Icon(Icons.person),
                color: Colors.white,
                iconSize: 30,
                onPressed: _showProfileMenu,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //1. Texto Principal
            Padding(
              padding: EdgeInsets.only(left: 24.0, top: 20),
              child: Row(
                children: [
                  Text('Hardware ', style: GoogleFonts.roboto(fontSize: 40)),
                  Text(
                    'Store',
                    style: GoogleFonts.roboto(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            //2. Pestañas (TabBar)
            TabBar(
              tabs: myTabs,
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 3),
                ),
              ),
            ),
            //3. Contenido de las pestañas (TabBarView)
            SizedBox(height: 30),
            Expanded(
              child: TabBarView(
                children: [
                  HardwareTab(onAddToCart: addToCart),
                  ToolsTab(onAddToCart: addToCart),
                  MaterialsTab(onAddToCart: addToCart),
                  SafetyTab(onAddToCart: addToCart),
                  AccessoriesTab(onAddToCart: addToCart),
                ],
              ),
            ),

            //4. Carrito (Cart)
            Container(
              color: Color(0xFF212121),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Column(
                      //se pega a la izquierda
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$itemCount ${itemCount == 1 ? 'Item' : 'Items'} | \$${totalPrice.toStringAsFixed(2)}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Free shipping included',
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  //botón de checkout
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE65100),
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 24,
                      ),
                    ),
                    onPressed: showCart,
                    child: const Text(
                      'View Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
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
