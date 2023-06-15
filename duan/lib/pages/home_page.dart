import 'package:flutter/material.dart';
import 'package:duan/json/constant.dart';
import 'package:duan/theme/colors.dart';
import 'package:duan/screens/notification_page.dart';
import 'package:duan/appmenu.dart';
import 'package:duan/cloles/cloles1.dart';
import 'package:duan/cloles/cloles2.dart';
import 'package:duan/cloles/cloles3.dart';
import 'package:duan/cloles/closes4.dart';
import 'package:duan/cloles/closes5.dart';
import 'package:duan/cloles/closes6.dart';
import 'package:duan/cloles/closes7.dart';
import 'package:duan/cloles/closes8.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:duan/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class Cart {
  List<CartItem> items = [];

  // void deleteItem(CartItem cartItem) {
  //   items.removeAt(cartItem);
  // }

  void addItem(CartItem cartItem) {
    items.add(cartItem);
  }
}

class _HomePageState extends State<HomePage> {
  final List<String> imageUrls = [
    'assets/images/banner.webp',
    'assets/images/banner0.jfif',
    'assets/images/banner1.jpg',
    'assets/images/banner2.png',
    'assets/images/banner3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      appBar: AppBar(
        title: const Text('SHOP TTT'),
      ),
      drawer: const AppMenu(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
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
          ],
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Sản Phẩm Mới Nhất',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: 180,
                  height: 220,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(categories[index]['imgUrl']),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            categories[index]['title'],
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Đề Xuất Cho Bạn",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
            children: List.generate(recommends.length, (index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Cloles1(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              width: 140,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          recommends[index]['imgUrl']),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recommends[index]['title'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      height: 1.5),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$ " + recommends[index]['price'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      height: 1.5),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Cloles2(),
                                      ),
                                      (route) => false);
                                },
                                child: Container(
                                  width: 140,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              recommends2[index]['imgUrl']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 140,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recommends2[index]['title'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          height: 1.5),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "\$ " + recommends2[index]['price'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          height: 1.5),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Cloles3(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              width: 140,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          recommends3[index]['imgUrl']),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recommends3[index]['title'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      height: 1.5),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$ " + recommends3[index]['price'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      height: 1.5),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Cloles4(),
                                      ),
                                      (route) => false);
                                },
                                child: Container(
                                  width: 140,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              recommends4[index]['imgUrl']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 140,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recommends4[index]['title'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          height: 1.5),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "\$ " + recommends4[index]['price'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          height: 1.5),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          );
        })),
        SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Xem Gần Đây",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
            children: List.generate(recently.length, (index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Cloles5(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              width: 140,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1),
                                  image: DecorationImage(
                                      image:
                                          AssetImage(recently[index]['imgUrl']),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recently[index]['title'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      height: 1.5),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$ " + recently[index]['price'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      height: 1.5),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Cloles6(),
                                      ),
                                      (route) => false);
                                },
                                child: Container(
                                  width: 140,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              recently2[index]['imgUrl']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 140,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recently2[index]['title'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          height: 1.5),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "\$ " + recently2[index]['price'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          height: 1.5),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Cloles7(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              width: 140,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          recently3[index]['imgUrl']),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recently3[index]['title'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      height: 1.5),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$ " + recently3[index]['price'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      height: 1.5),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Cloles8(),
                                      ),
                                      (route) => false);
                                },
                                child: Container(
                                  width: 140,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              recently4[index]['imgUrl']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 140,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recently4[index]['title'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          height: 1.5),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "\$ " + recently4[index]['price'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          height: 1.5),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          );
        })),
        SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
