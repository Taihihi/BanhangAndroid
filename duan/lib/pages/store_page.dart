import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:duan/json/constant.dart';
import 'package:duan/theme/colors.dart';
// import 'package:duan/pages/home_page.dart';
// // import 'package:duan/pages/account_page.dart';
// import 'package:duan/pages/cart_page.dart';
// import 'package:duan/pages/home_page.dart';
// import 'package:duan/pages/more_page.dart';
// import 'package:duan/pages/store_page.dart';
import 'package:duan/cloles/cloles1.dart';
import 'package:duan/cloles/cloles2.dart';
import 'package:duan/cloles/cloles3.dart';
import 'package:duan/cloles/cloles4.dart';
import 'package:duan/cloles/cloles5.dart';
import 'package:duan/cloles/cloles6.dart';
import 'package:duan/appmenu.dart';

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
              children: [],
            ),
          ),
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
                                        image:
                                            AssetImage(storeList[index]['img']),
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
                                        image: AssetImage(
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
