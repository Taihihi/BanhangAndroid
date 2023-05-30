import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_demo_14/json/constant.dart';
import 'package:flutter_demo_14/theme/colors.dart';
import 'package:flutter_demo_14/widgets/custom_slider.dart';
import 'package:flutter_demo_14/pages/account_page.dart';
import 'package:flutter_demo_14/pages/cart_page.dart';
import 'package:flutter_demo_14/pages/home_page.dart';
import 'package:flutter_demo_14/pages/more_page.dart';
import 'package:flutter_demo_14/pages/store_page.dart';

class Cloles7 extends StatefulWidget {
  @override
  State<Cloles7> createState() => _HomePageState();
}

class _HomePageState extends State<Cloles7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      appBar: AppBar(
        title: const Text('Cloles'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
                (route) => false);
          },
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
            Column(
                children: List.generate(recommends.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: 500,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    NetworkImage(recommends[index]['imgUrl']),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
              );
            })),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 0,
        ),
        Container(
          margin: EdgeInsets.only(top: 0),
          padding: EdgeInsets.only(
            top: 40,
            left: 40,
            right: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.blue),
                  children: [
                    TextSpan(text: "\nPrice\n"),
                    TextSpan(
                        text: "90.000",
                        style: Theme.of(context).textTheme.headline5
                        // .copyWith(fontWeight: FontWeight.bold),
                        )
                  ],
                ),
              ),
              // Text("Color"),
              // Row(
              //   children: <Widget>[
              //     ColorDot(
              //       color: Color(0xFF356C95),
              //       isSelected: true,
              //     ),
              //     ColorDot(color: Color(0xFFF8C078)),
              //     ColorDot(color: Color(0xFFA29B9B)),
              //   ],
              // ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.blue),
                  children: [
                    TextSpan(text: "\nSize\n"),
                    TextSpan(
                        text: "M", style: Theme.of(context).textTheme.headline5
                        // .copyWith(fontWeight: FontWeight.bold),
                        )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
                  style: TextStyle(height: 1.5),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 0),
                      height: 54,
                      width: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: Colors.blue,
                        ),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.blue,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // Expanded(
                    Container(
                      width: (size.width - 100) / 2,
                      height: 50,
                      decoration: BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(fontSize: 15, color: white),
                        ),
                      ),
                    )
                    // SizedBox(
                    //   height: 100,
                    //   child: Text(
                    //     "Buy  Now".toUpperCase(),
                    //     style: TextStyle(
                    //       height: 3,
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.w100,
                    //       color: Colors.blue,
                    //     ),
                    //   ),
                    // ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Feather {
  static IconData? search;
}

class ColorDot extends StatelessWidget {
  final color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
