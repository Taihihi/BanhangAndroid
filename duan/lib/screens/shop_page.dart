// File: screens/shop_page.dart

import 'package:flutter/material.dart';
import 'package:duan/models.dart';
import 'package:duan/screens/product_detail_page.dart';
import 'package:duan/screens/cart_page.dart';
import 'package:duan/screens/notification_page.dart';
import 'package:duan/widgets/product_item.dart';
import 'package:duan/screens/profile_page.dart';
import 'package:duan/appmenu.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ShopPage> {
  List<Product> products = [
    Product(
      id: '1',
      name: 'Áo Xanh Nam',
      image: 'assets/images/aoxanhnam.webp',
      price: 100000,
      description:
          'This is a sample description of Product 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: '4.5',
      reviews: '10',
    ),
    Product(
      id: '2',
      name: 'Áo Phông Nữ In Nhỏ',
      image: "assets/images/fullnu.webp",
      price: 70000,
      description:
          'This is a sample description of Product 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: '4.2',
      reviews: '8',
    ),
    Product(
      id: '3',
      name: 'Quần Áo Jeans',
      image: "assets/images/2.webp",
      price: 150000,
      description:
          'This is a sample description of Product 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: '4.8',
      reviews: '12',
    ),
    Product(
      id: '4',
      name: 'Áo Polo Nam',
      image: "assets/images/aophong.webp",
      price: 80000,
      description:
          'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: '4.0',
      reviews: '6',
    ),
    Product(
      id: '5',
      name: 'Quan Jean Dai',
      image: "assets/images/jeandai.webp",
      price: 150000,
      description:
          'This is a sample description of Product 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: '4.6',
      reviews: '9',
    ),
    Product(
      id: '6',
      name: 'Quần Khaki Nam',
      image: 'assets/images/kaki.webp',
      price: 150000,
      description:
          'This is a sample description of Product 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: '4.7',
      reviews: '9',
    ),
    Product(
      id: '7',
      name: 'Đồ Mặc Nhà Bé Trai',
      image: 'assets/images/3.webp',
      price: 90000,
      description:
          'This is a sample description of Product 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: '4.0',
      reviews: '11',
    ),
    Product(
      id: '8',
      name: 'Quần Jeans Nam',
      image: 'assets/images/jean.webp',
      price: 110000,
      description:
          'This is a sample description of Product 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: '4.8',
      reviews: '8',
    ),
    Product(
      id: '9',
      name: 'Bộ Mặc Nhà Nữ',
      image: 'assets/images/nu.webp',
      price: 90000,
      description:
          'This is a sample description of Product 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: '4.1',
      reviews: '5',
    ),
    Product(
      id: '10',
      name: 'Quần Soóc Bé Trai',
      image: 'assets/images/sooc.webp',
      price: 80000,
      description:
          'This is a sample description of Product 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: '4.6',
      reviews: '7',
    ),
  ];

  List<CartItem> cartItems = [];

  void addToCart(Product product) {
    bool itemExists = false;

    for (var cartItem in cartItems) {
      if (cartItem.product.id == product.id) {
        cartItem.quantity++;
        itemExists = true;
        break;
      }
    }

    if (!itemExists) {
      cartItems.add(CartItem(
        id: DateTime.now().toString(),
        product: product,
        quantity: 1,
      ));
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Added To Cart'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cloles'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(cartItems: cartItems),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationPage(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: const AppMenu(),
      body: Container(
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            Container(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return ProductItem(
                    product: product,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailPage(product: product),
                        ),
                      );
                    },
                    onAddToCartPressed: () {
                      addToCart(product);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
