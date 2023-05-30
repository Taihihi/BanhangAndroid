// File: screens/home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_demo_14/models.dart';
import 'package:flutter_demo_14/screens/product_detail_page.dart';
import 'package:flutter_demo_14/screens/cart_page.dart';
import 'package:flutter_demo_14/screens/profile_page.dart';
import 'package:flutter_demo_14/screens/notification_page.dart';
import 'package:flutter_demo_14/widgets/product_item.dart';
import 'package:flutter_demo_14/appmenu.dart';

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
      image:
          'https://canifa.com/img/486/733/resize/8/t/8ts23s014-sg113-2-thumb.webp',
      price: 100000,
      description: '',
    ),
    Product(
      id: '2',
      name: 'Áo Phông Nữ In Nhỏ',
      image:
          "https://canifa.com/img/486/733/resize/6/t/6ts23s021-sp235-2-thumb.webp",
      price: 70000,
      description: '',
    ),
    Product(
      id: '3',
      name: 'Quần Áo Jeans',
      image:
          "https://images.unsplash.com/photo-1544642899-f0d6e5f6ed6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
      price: 150000,
      description: '',
    ),
    Product(
      id: '4',
      name: 'Áo Polo Nam',
      image: "https://canifa.com/img/486/733/resize/8/t/8tp23s001-sb194-2.webp",
      price: 80000,
      description: '',
    ),
    Product(
      id: '5',
      name: 'Túi Xách Xanh',
      image:
          "https://images.unsplash.com/photo-1560891958-68bb1fe7fb78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
      price: 150000,
      description: '',
    ),
    Product(
      id: '6',
      name: 'Quần Khaki Nam',
      image:
          'https://canifa.com/img/486/733/resize/8/b/8bk23a001-sb229-2-thumb.webp',
      price: 150000,
      description: '',
    ),
    Product(
      id: '7',
      name: 'Đồ Mặc Nhà Bé Trai',
      image:
          'https://canifa.com/img/486/733/resize/2/l/2ls23s012-sg067-120-1-ghep.webp',
      price: 90000,
      description: '',
    ),
    Product(
      id: '8',
      name: 'Quần Jeans Nam',
      image:
          'https://canifa.com/img/486/733/resize/8/b/8bj23a003-sj777-31-1.webp',
      price: 110000,
      description: '',
    ),
    Product(
      id: '9',
      name: 'Bộ Mặc Nhà Nữ',
      image:
          'https://canifa.com/img/486/733/resize/6/l/6ls23s004-fn021-m-1-ghep.webp',
      price: 90000,
      description: '',
    ),
    Product(
      id: '10',
      name: 'Quần Soóc Bé Trai',
      image:
          'https://canifa.com/img/486/733/resize/2/b/2bs23c018-se002-110-1_1.webp',
      price: 80000,
      description: '',
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
        content: Text('Added to cart'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
      body: GridView.builder(
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
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
            onAddToCartPressed: () {
              addToCart(product);
            },
          );
        },
      ),
    );
  }
}
