import 'package:flutter/material.dart';
import 'package:flutter_demo_14/json/constant.dart';
import 'package:flutter_demo_14/theme/colors.dart';
// import 'package:duan/pages/account_page.dart';
import 'package:flutter_demo_14/pages/cart_page.dart';
import 'package:flutter_demo_14/pages/home_page.dart';
import 'package:flutter_demo_14/pages/more_page.dart';
import 'package:flutter_demo_14/pages/store_page.dart';
// import 'package:flutter_demo_14/cloles/cloles1.dart';
// import 'package:flutter_demo_14/json/login.dart';
import 'package:flutter_demo_14/ui/login/login_screen.dart';
import 'package:flutter_demo_14/appmenu.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
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
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(profileUrl), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "TTT",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "4 Orders",
                    style: TextStyle(fontSize: 15, color: grey),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: grey.withOpacity(0.8),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(menusMore.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    menusMore[index],
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                  ),
                );
              })),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (route) => false);
                },
                child: Container(
                  width: (size.width - 100) / 2,
                  height: 50,
                  decoration: BoxDecoration(
                      color: black, borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Settings",
                      style: TextStyle(fontSize: 15, color: white),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                        (route) => false);
                  },
                  child: Container(
                    width: (size.width - 100) / 2,
                    height: 50,
                    decoration: BoxDecoration(
                        color: black, borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Sign Out",
                        style: TextStyle(fontSize: 15, color: white),
                      ),
                    ),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
