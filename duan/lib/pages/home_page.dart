import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_demo_14/json/constant.dart';
import 'package:flutter_demo_14/models.dart';
import 'package:flutter_demo_14/theme/colors.dart';
import 'package:flutter_demo_14/widgets/custom_slider.dart';
// import 'package:duan/pages/account_page.dart';
import 'package:flutter_demo_14/pages/cart_page.dart';
import 'package:flutter_demo_14/pages/home_page.dart';
import 'package:flutter_demo_14/pages/more_page.dart';
import 'package:flutter_demo_14/pages/store_page.dart';
import 'package:flutter_demo_14/cloles/cloles7.dart';
import 'package:flutter_demo_14/cloles/cloles8.dart';
import 'package:flutter_demo_14/cloles/cloles9.dart';
import 'package:flutter_demo_14/cloles/closes10.dart';
import 'package:flutter_demo_14/cloles/closes11.dart';
import 'package:flutter_demo_14/cloles/closes12.dart';
import 'package:flutter_demo_14/cloles/closes13.dart';
import 'package:flutter_demo_14/cloles/closes14.dart';
// import 'package:duan/cloles/cloles7.dart';
import 'package:flutter_demo_14/appmenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      appBar: AppBar(
        title: const Text('Cloles'),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.shopping_cart),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => CartPage(cartItems: cartItems),
        //         ),
        //       );
        //     },
        //   ),
        // ],
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
            Container(
              width: size.width,
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(homeImg), fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Winter Collection",
                        style: TextStyle(
                            fontSize: 25,
                            color: white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                                (route) => false);
                          },
                          child: const Text("DISCOVER",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: white,
                          size: 18,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
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
                                image:
                                    NetworkImage(categories[index]['imgUrl']),
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
                                color: white),
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
              Row(
                children: [
                  Text("All", style: TextStyle(color: grey)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                    size: 16,
                  )
                ],
              )
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
                                      image: NetworkImage(
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
                                      color: grey,
                                      height: 1.5),
                                ),
                                // ElevatedButton(
                                //     onPressed: () {
                                //       Navigator.pushAndRemoveUntil(
                                //           context,
                                //           MaterialPageRoute(
                                //             builder: (context) => Cloles7(),
                                //           ),
                                //           (route) => false);
                                //     },
                                //     child: Align(
                                //       alignment: Alignment.topRight,
                                //       child: const Text("Buy Now >>",
                                //           style: TextStyle(
                                //               fontSize: 10,
                                //               color: white,
                                //               fontWeight: FontWeight.bold)),
                                //     ))
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
                                          image: NetworkImage(
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
                                          color: grey,
                                          height: 1.5),
                                    ),
                                    // ElevatedButton(
                                    //     onPressed: () {
                                    //       Navigator.pushAndRemoveUntil(
                                    //           context,
                                    //           MaterialPageRoute(
                                    //             builder: (context) => Cloles8(),
                                    //           ),
                                    //           (route) => false);
                                    //     },
                                    //     child: Align(
                                    //       alignment: Alignment.topRight,
                                    //       child: const Text("Buy Now >>",
                                    //           style: TextStyle(
                                    //               fontSize: 10,
                                    //               color: white,
                                    //               fontWeight: FontWeight.bold)),
                                    //     ))
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
                                    builder: (context) => Cloles9(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              width: 140,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1),
                                  image: DecorationImage(
                                      image: NetworkImage(
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
                                      color: grey,
                                      height: 1.5),
                                ),
                                // ElevatedButton(
                                //     onPressed: () {
                                //       Navigator.pushAndRemoveUntil(
                                //           context,
                                //           MaterialPageRoute(
                                //             builder: (context) => Cloles9(),
                                //           ),
                                //           (route) => false);
                                //     },
                                //     child: Align(
                                //       alignment: Alignment.topRight,
                                //       child: const Text("Buy Now >>",
                                //           style: TextStyle(
                                //               fontSize: 10,
                                //               color: white,
                                //               fontWeight: FontWeight.bold)),
                                //     ))
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
                                        builder: (context) => Cloles10(),
                                      ),
                                      (route) => false);
                                },
                                child: Container(
                                  width: 140,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1),
                                      image: DecorationImage(
                                          image: NetworkImage(
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
                                          color: grey,
                                          height: 1.5),
                                    ),
                                    // ElevatedButton(
                                    //     onPressed: () {
                                    //       Navigator.pushAndRemoveUntil(
                                    //           context,
                                    //           MaterialPageRoute(
                                    //             builder: (context) =>
                                    //                 Cloles10(),
                                    //           ),
                                    //           (route) => false);
                                    //     },
                                    //     child: Align(
                                    //       alignment: Alignment.topRight,
                                    //       child: const Text("Buy Now >>",
                                    //           style: TextStyle(
                                    //               fontSize: 10,
                                    //               color: white,
                                    //               fontWeight: FontWeight.bold)),
                                    //     ))
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
        CustomeCarouselHomePage(
          items: slider,
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
              Row(
                children: [
                  Text("All", style: TextStyle(color: grey)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                    size: 16,
                  )
                ],
              )
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
                                    builder: (context) => Cloles11(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              width: 140,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          recently[index]['imgUrl']),
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
                                      color: grey,
                                      height: 1.5),
                                ),
                                // ElevatedButton(
                                //     onPressed: () {
                                //       Navigator.pushAndRemoveUntil(
                                //           context,
                                //           MaterialPageRoute(
                                //             builder: (context) => Cloles14(),
                                //           ),
                                //           (route) => false);
                                //     },
                                //     child: Align(
                                //       alignment: Alignment.topRight,
                                //       child: const Text("Buy Now >>",
                                //           style: TextStyle(
                                //               fontSize: 10,
                                //               color: white,
                                //               fontWeight: FontWeight.bold)),
                                //     ))
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
                                        builder: (context) => Cloles12(),
                                      ),
                                      (route) => false);
                                },
                                child: Container(
                                  width: 140,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1),
                                      image: DecorationImage(
                                          image: NetworkImage(
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
                                          color: grey,
                                          height: 1.5),
                                    ),
                                    // ElevatedButton(
                                    //     onPressed: () {
                                    //       Navigator.pushAndRemoveUntil(
                                    //           context,
                                    //           MaterialPageRoute(
                                    //             builder: (context) =>
                                    //                 Cloles11(),
                                    //           ),
                                    //           (route) => false);
                                    //     },
                                    //     child: Align(
                                    //       alignment: Alignment.topRight,
                                    //       child: const Text("Buy Now >>",
                                    //           style: TextStyle(
                                    //               fontSize: 10,
                                    //               color: white,
                                    //               fontWeight: FontWeight.bold)),
                                    //     ))
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
                                    builder: (context) => Cloles13(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              width: 140,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1),
                                  image: DecorationImage(
                                      image: NetworkImage(
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
                                      color: grey,
                                      height: 1.5),
                                ),
                                // ElevatedButton(
                                //     onPressed: () {
                                //       Navigator.pushAndRemoveUntil(
                                //           context,
                                //           MaterialPageRoute(
                                //             builder: (context) => Cloles12(),
                                //           ),
                                //           (route) => false);
                                //     },
                                //     child: Align(
                                //       alignment: Alignment.topRight,
                                //       child: const Text("Buy Now >>",
                                //           style: TextStyle(
                                //               fontSize: 10,
                                //               color: white,
                                //               fontWeight: FontWeight.bold)),
                                //     ))
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
                                        builder: (context) => Cloles14(),
                                      ),
                                      (route) => false);
                                },
                                child: Container(
                                  width: 140,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1),
                                      image: DecorationImage(
                                          image: NetworkImage(
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
                                          color: grey,
                                          height: 1.5),
                                    ),
                                    // ElevatedButton(
                                    //     onPressed: () {
                                    //       Navigator.pushAndRemoveUntil(
                                    //           context,
                                    //           MaterialPageRoute(
                                    //             builder: (context) =>
                                    //                 Cloles13(),
                                    //           ),
                                    //           (route) => false);
                                    //     },
                                    //     child: Align(
                                    //       alignment: Alignment.topRight,
                                    //       child: const Text("Buy Now >>",
                                    //           style: TextStyle(
                                    //               fontSize: 10,
                                    //               color: white,
                                    //               fontWeight: FontWeight.bold)),
                                    //     ))
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

class Feather {
  static IconData? search;
}
