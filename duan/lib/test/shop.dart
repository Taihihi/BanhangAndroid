// File: screens/home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_demo_40/models.dart';
import 'package:flutter_demo_40/product_detail_page2.dart';
import 'package:flutter_demo_40/cart_page.dart';
// import 'package:flutter_demo_40/screens/profile_page.dart';
// import 'package:flutter_demo_14/screens/notification_page.dart';
import 'package:flutter_demo_40/product_item.dart';
// import 'package:flutter_demo_14/appmenu.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ShopPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> imageUrls = [
    'assets/images/2.webp',
    'assets/images/3.webp',
    'assets/images/aophong.webp',
  ];

  List<Product> products = [
    Product(
      id: '1',
      name: 'Product 1',
      image: "assets/images/aophong.webp",
      price: 100,
      description:
          'This is a sample description of Product 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    Product(
      id: '2',
      image: 'assets/images/aoxanhnam.webp',
      name: 'Product 2',
      price: 200,
      description:
          'This is a sample description of Product 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    Product(
      id: '3',
      image: 'assets/images/fullnu.webp',
      name: 'Product 3',
      price: 300,
      description:
          'This is a sample description of Product 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    Product(
      id: '4',
      image: 'assets/images/jean.webp',
      name: 'Product 4',
      price: 300,
      description:
          'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    Product(
      id: '5',
      image: 'assets/images/fullnu.webp',
      name: 'Product 5',
      price: 300,
      description:
          'This is a sample description of Product 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    // Product(
    //   id: '6',
    //   name: 'Quần Khaki Nam',
    //   image:
    //       'https://canifa.com/img/486/733/resize/8/b/8bk23a001-sb229-2-thumb.webp',
    //   price: 150000,
    //   description: '',
    // ),
    // Product(
    //   id: '7',
    //   name: 'Đồ Mặc Nhà Bé Trai',
    //   image:
    //       'https://canifa.com/img/486/733/resize/2/l/2ls23s012-sg067-120-1-ghep.webp',
    //   price: 90000,
    //   description: '',
    // ),
    // Product(
    //   id: '8',
    //   name: 'Quần Jeans Nam',
    //   image:
    //       'https://canifa.com/img/486/733/resize/8/b/8bj23a003-sj777-31-1.webp',
    //   price: 110000,
    //   description: '',
    // ),
    // Product(
    //   id: '9',
    //   name: 'Bộ Mặc Nhà Nữ',
    //   image:
    //       'https://canifa.com/img/486/733/resize/6/l/6ls23s004-fn021-m-1-ghep.webp',
    //   price: 90000,
    //   description: '',
    // ),
    // Product(
    //   id: '10',
    //   name: 'Quần Soóc Bé Trai',
    //   image:
    //       'https://canifa.com/img/486/733/resize/2/b/2bs23c018-se002-110-1_1.webp',
    //   price: 80000,
    //   description: '',
    // ),
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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ProfilePage(),
              //   ),
              // );
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => NotificationPage(),
              //   ),
              // );
            },
          ),
        ],
      ),
      // drawer: const AppMenu(),
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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
