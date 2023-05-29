import 'package:flutter/material.dart';
import 'package:flutter_demo_14/pages/home_page.dart';
import 'package:flutter_demo_14/pages/more_page.dart';
// import 'package:flutter_demo_14/pages/root_app.dart';
// import 'package:flutter_demo_14/pages/cart_page.dart';
// import 'package:flutter_demo_14/pages/store_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_demo_14/screens/shop_page.dart';

class AppMenu extends StatefulWidget {
  const AppMenu({super.key});

  @override
  State<AppMenu> createState() => _AppmenuState();
}

class _AppmenuState extends State<AppMenu> {
  void _showScreen(var context, var screen) {
    Navigator.pop(context);
    Navigator.pushReplacement(
      context,
      PageTransition(
        child: screen,
        type: PageTransitionType.rightToLeftWithFade,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Icon(Icons.account_circle, size: 70, color: Colors.grey),
                SizedBox(height: 2),
                Text(
                  'Cloles Management',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => _showScreen(context, const HomePage()),
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Shop'),
            onTap: () => _showScreen(context, const ShopPage()),
          ),
          // ListTile(
          //   leading: const Icon(Icons.shopping_cart),
          //   title: const Text('Cart'),
          //   onTap: () => _showScreen(context, const CartPage()),
          // ),
          ListTile(
            leading: const Icon(Icons.more_horiz),
            title: const Text('More'),
            onTap: () => _showScreen(context, const MorePage()),
          ),
        ],
      ),
    );
  }
}
