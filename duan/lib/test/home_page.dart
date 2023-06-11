//file home_page.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_demo_40/product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  final List<Product> products = [
    Product(
      imageUrl: 'assets/images/aophong.webp',
      name: 'Product 1',
      price: '100',
      description:
          'This is a sample description of Product 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: 4.5,
      reviews: 10,
    ),
    Product(
      imageUrl: 'assets/images/aoxanhnam.webp',
      name: 'Product 2',
      price: '200',
      description:
          'This is a sample description of Product 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: 4.2,
      reviews: 8,
    ),
    Product(
      imageUrl: 'assets/images/fullnu.webp',
      name: 'Product 3',
      price: '300',
      description:
          'This is a sample description of Product 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: 4.8,
      reviews: 12,
    ),
    Product(
      imageUrl: 'assets/images/jean.webp',
      name: 'Product 4',
      price: '300',
      description:
          'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: 4.0,
      reviews: 6,
    ),
    Product(
      imageUrl: 'assets/images/fullnu.webp',
      name: 'Product 5',
      price: '300',
      description:
          'This is a sample description of Product 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      rating: 4.6,
      reviews: 9,
    ),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SHOP TTT'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // TODO: Implement shopping cart functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // TODO: Implement notification functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: imageUrls.map((url) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Image.asset(
                      url,
                      fit: BoxFit.cover,
                      width: 1000.0,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 3),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Sản Phẩm Mới Nhất',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 200.0,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/product_detail',
                          arguments: products[index]);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: 200.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              products[index].imageUrl,
                              fit: BoxFit.cover,
                              width: 180.0,
                              height: 130.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text(
                              products[index].name,
                              style: TextStyle(fontSize: 16.0),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text(
                              'Price: \$${products[index].price}',
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Danh Sách Sản Phẩm',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.0),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/product_detail',
                        arguments: products[index]);
                  },
                  child: buildProductCard(products[index]),
                );
              },
            ),
          ],
        ),
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

  Widget buildProductCard(Product product) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      product.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 5.0,
                  right: 5.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 12.0,
                        ),
                        SizedBox(width: 2.0),
                        Text(
                          product.rating.toString(),
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            product.name,
            style: TextStyle(fontSize: 16.0),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 3.0),
          Text(
            'Price: \$${product.price}',
            style: TextStyle(fontSize: 14.0),
          ),
          SizedBox(height: 3.0),
        ],
      ),
    );
  }
}
