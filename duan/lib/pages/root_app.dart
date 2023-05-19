import 'package:flutter/material.dart';
import 'package:flutter_demo_10/json/constant.dart';
// import 'package:duan/pages/account_page.dart';
import 'package:flutter_demo_10/pages/cart_page.dart';
import 'package:flutter_demo_10/pages/home_page.dart';
import 'package:flutter_demo_10/pages/more_page.dart';
import 'package:flutter_demo_10/pages/store_page.dart';
import 'package:flutter_demo_10/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  var activeTab = 0;
  // appbar
  var appbar = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      // bottomNavigationBar: getFooter(),
      // appBar: getAppBar(),
      // body: getBody(),
      appBar: AppBar(title: const Text('Cloles')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlue),
              child: Text('Cloles',
                  textScaleFactor: 1.5, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.shop),
              title: const Text("Shop"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StorePage(),
                  ),
                );
              },
            ),
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
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text("Cart"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.more_horiz),
              title: const Text("More"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MorePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      // body: const Center(
      //   child: Text('Content Here', textScaleFactor: 4),
      // ),
    );
  }

  // Widget getBody() {
  //   return IndexedStack(
  //     index: activeTab,
  //     children: [
  //       HomePage(),
  //       StorePage(),
  //       AccountPage(),
  //       CartPage(),
  //       MorePage()
  //     ],
  //   );
  // }

  // Widget getAppBar() {
  //   switch (activeTab) {
  //     case 0:
  //       appbar = null;
  //       break;
  //     case 1:
  //       appbar = null;
  //       break;
  //     case 2:
  //       return AppBar(
  //         elevation: 0.8,
  //         backgroundColor: white,
  //         title: Text(
  //           "ACCOUNT",
  //           style: TextStyle(color: black),
  //         ),
  //       );
  //       break;
  //     case 3:
  //       return AppBar(
  //         elevation: 0.8,
  //         backgroundColor: white,
  //         title: Text(
  //           "CART",
  //           style: TextStyle(color: black),
  //         ),
  //       );
  //       break;
  //     case 4:
  //       return AppBar(
  //         elevation: 0.8,
  //         backgroundColor: white,
  //         title: Text(
  //           "MORE",
  //           style: TextStyle(color: black),
  //         ),
  //       );
  //       break;
  //     default:
  //   }
  // }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(itemsTab.length, (index) {
              return IconButton(
                  icon: Icon(
                    itemsTab[index]['icon'],
                    size: itemsTab[index]['size'],
                    color: activeTab == index ? accent : black,
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  });
            })),
      ),
    );
  }
}
