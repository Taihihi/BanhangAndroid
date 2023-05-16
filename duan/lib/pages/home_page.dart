import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_demo_10/json/constant.dart';
import 'package:flutter_demo_10/theme/colors.dart';
import 'package:flutter_demo_10/widgets/custom_slider.dart';
import 'package:flutter_demo_10/pages/account_page.dart';
import 'package:flutter_demo_10/pages/cart_page.dart';
import 'package:flutter_demo_10/pages/home_page.dart';
import 'package:flutter_demo_10/pages/more_page.dart';
import 'package:flutter_demo_10/pages/store_page.dart';
import 'package:flutter_demo_10/cloles/cloles1.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
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
              title: const Text("Store"),
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
                          Container(
                            width: 140,
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        recommends[index]['imgUrl']),
                                    fit: BoxFit.cover)),
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
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Cloles1(),
                                          ),
                                          (route) => false);
                                    },
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: const Text("Buy Now >>",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: white,
                                              fontWeight: FontWeight.bold)),
                                    ))
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
                              Container(
                                width: 140,
                                height: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            recommends2[index]['imgUrl']),
                                        fit: BoxFit.cover)),
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
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Cloles1(),
                                              ),
                                              (route) => false);
                                        },
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: const Text("Buy Now >>",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: white,
                                                  fontWeight: FontWeight.bold)),
                                        ))
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
                          Container(
                            width: 140,
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        recommends3[index]['imgUrl']),
                                    fit: BoxFit.cover)),
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
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Cloles1(),
                                          ),
                                          (route) => false);
                                    },
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: const Text("Buy Now >>",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: white,
                                              fontWeight: FontWeight.bold)),
                                    ))
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
                              Container(
                                width: 140,
                                height: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            recommends4[index]['imgUrl']),
                                        fit: BoxFit.cover)),
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
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Cloles1(),
                                              ),
                                              (route) => false);
                                        },
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: const Text("Buy Now >>",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: white,
                                                  fontWeight: FontWeight.bold)),
                                        ))
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
                          Container(
                            width: 140,
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1),
                                image: DecorationImage(
                                    image:
                                        NetworkImage(recently[index]['imgUrl']),
                                    fit: BoxFit.cover)),
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
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Cloles1(),
                                          ),
                                          (route) => false);
                                    },
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: const Text("Buy Now >>",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: white,
                                              fontWeight: FontWeight.bold)),
                                    ))
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
                              Container(
                                width: 140,
                                height: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            recently2[index]['imgUrl']),
                                        fit: BoxFit.cover)),
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
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Cloles1(),
                                              ),
                                              (route) => false);
                                        },
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: const Text("Buy Now >>",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: white,
                                                  fontWeight: FontWeight.bold)),
                                        ))
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
                          Container(
                            width: 140,
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        recently3[index]['imgUrl']),
                                    fit: BoxFit.cover)),
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
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Cloles1(),
                                          ),
                                          (route) => false);
                                    },
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: const Text("Buy Now >>",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: white,
                                              fontWeight: FontWeight.bold)),
                                    ))
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
                              Container(
                                width: 140,
                                height: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            recently4[index]['imgUrl']),
                                        fit: BoxFit.cover)),
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
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Cloles1(),
                                              ),
                                              (route) => false);
                                        },
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: const Text("Buy Now >>",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: white,
                                                  fontWeight: FontWeight.bold)),
                                        ))
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
