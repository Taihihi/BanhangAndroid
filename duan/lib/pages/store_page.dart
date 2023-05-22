import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_demo_12/json/constant.dart';
import 'package:flutter_demo_12/theme/colors.dart';
import 'package:flutter_demo_12/pages/home_page.dart';
// import 'package:duan/pages/account_page.dart';
import 'package:flutter_demo_12/pages/cart_page.dart';
import 'package:flutter_demo_12/pages/home_page.dart';
import 'package:flutter_demo_12/pages/more_page.dart';
import 'package:flutter_demo_12/pages/store_page.dart';
import 'package:flutter_demo_12/cloles/cloles1.dart';
import 'package:flutter_demo_12/cloles/cloles2.dart';
import 'package:flutter_demo_12/cloles/cloles3.dart';
import 'package:flutter_demo_12/cloles/cloles4.dart';
import 'package:flutter_demo_12/cloles/cloles5.dart';
import 'package:flutter_demo_12/cloles/cloles6.dart';
import 'package:flutter_demo_12/appmenu.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);
  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      appBar: AppBar(title: const Text('Cloles')),
      drawer: const AppMenu(),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(color: Colors.lightBlue),
      //         child: Text('Cloles',
      //             textScaleFactor: 1.5, style: TextStyle(color: Colors.white)),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text("Home"),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => HomePage(),
      //             ),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.shop),
      //         title: const Text("Shop"),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => StorePage(),
      //             ),
      //           );
      //         },
      //       ),
      // ListTile(
      //   leading: const Icon(Icons.verified_user),
      //   title: const Text("Account"),
      //   onTap: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => AccountPage(),
      //       ),
      //     );
      //   },
      // ),
      //       ListTile(
      //         leading: const Icon(Icons.shopping_cart),
      //         title: const Text("Cart"),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => CartPage(),
      //             ),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.more_horiz),
      //         title: const Text("More"),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => MorePage(),
      //             ),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Text(
                //   "Phnom Penh",
                //   style: TextStyle(fontSize: 16),
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // Icon(
                //   Icons.map,
                //   size: 20,
                // )
              ],
            ),
          ),
          // SizedBox(
          //   height: 40,
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20, right: 20),
          //   child: Text(
          //     "Find all stores here",
          //     style: TextStyle(
          //         fontSize: 30, height: 1.5, fontWeight: FontWeight.w400),
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Flexible(
                    child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      cursorColor: primary,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Feather.search,
                            size: 20,
                          ),
                          hintText: "Search"),
                    ),
                  ),
                )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration:
                      BoxDecoration(color: black, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.search,
                      color: white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Divider(color: grey.withOpacity(0.8)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              // "All stores",
              "Cloles",
              style: TextStyle(fontSize: 22, color: black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
              children: List.generate(storeList.length, (index) {
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
                                        image: NetworkImage(
                                            storeList[index]['img']),
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
                                    storeList[index]['title'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: black,
                                        height: 1.5),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$ " + storeList[index]['price'],
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
                                  //             builder: (context) => Cloles1(),
                                  //           ),
                                  //           (route) => false);
                                  //     },
                                  //     child: Align(
                                  //       alignment: Alignment.topRight,
                                  //       child: const Text('Buy Now >>>',
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
                                            image: NetworkImage(
                                                storeList2[index]['img']),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 140,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        storeList2[index]['title'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: black,
                                            height: 1.5),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$ " + storeList2[index]['price'],
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
                                      //                 Cloles2(),
                                      //           ),
                                      //           (route) => false);
                                      //     },
                                      //     child: Align(
                                      //       alignment: Alignment.topRight,
                                      //       child: const Text('Buy Now >>>',
                                      //           style: TextStyle(
                                      //               fontSize: 10,
                                      //               color: white,
                                      //               fontWeight:
                                      //                   FontWeight.bold)),
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
                                        image: NetworkImage(
                                            storeList3[index]['img']),
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
                                    storeList3[index]['title'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: black,
                                        height: 1.5),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$ " + storeList3[index]['price'],
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
                                  //             builder: (context) => Cloles3(),
                                  //           ),
                                  //           (route) => false);
                                  //     },
                                  //     child: Align(
                                  //       alignment: Alignment.topRight,
                                  //       child: const Text('Buy Now >>>',
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
                                            image: NetworkImage(
                                                storeList4[index]['img']),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 140,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        storeList4[index]['title'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: black,
                                            height: 1.5),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$ " + storeList4[index]['price'],
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
                                      //                 Cloles4(),
                                      //           ),
                                      //           (route) => false);
                                      //     },
                                      //     child: Align(
                                      //       alignment: Alignment.topRight,
                                      //       child: const Text('Buy Now >>>',
                                      //           style: TextStyle(
                                      //               fontSize: 10,
                                      //               color: white,
                                      //               fontWeight:
                                      //                   FontWeight.bold)),
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
                                        image: NetworkImage(
                                            storeList5[index]['img']),
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
                                    storeList5[index]['title'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: black,
                                        height: 1.5),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$ " + storeList5[index]['price'],
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
                                  //             builder: (context) => Cloles5(),
                                  //           ),
                                  //           (route) => false);
                                  //     },
                                  //     child: Align(
                                  //       alignment: Alignment.topRight,
                                  //       child: const Text('Buy Now >>>',
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
                                            image: NetworkImage(
                                                storeList6[index]['img']),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 140,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        storeList6[index]['title'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: black,
                                            height: 1.5),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$ " + storeList6[index]['price'],
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
                                      //                 Cloles6(),
                                      //           ),
                                      //           (route) => false);
                                      //     },
                                      //     child: Align(
                                      //       alignment: Alignment.topRight,
                                      //       child: const Text('Buy Now >>>',
                                      //           style: TextStyle(
                                      //               fontSize: 10,
                                      //               color: white,
                                      //               fontWeight:
                                      //                   FontWeight.bold)),
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
              ],
            );
          })),
        ],
      ),
    );
  }
}

class Feather {
  static IconData? search;
}
