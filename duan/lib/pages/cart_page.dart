import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_demo_12/json/constant.dart';
import 'package:flutter_demo_12/theme/colors.dart';
// import 'package:duan/pages/account_page.dart';
import 'package:flutter_demo_12/pages/cart_page.dart';
import 'package:flutter_demo_12/pages/home_page.dart';
import 'package:flutter_demo_12/pages/more_page.dart';
import 'package:flutter_demo_12/pages/store_page.dart';
import 'package:flutter_demo_12/appmenu.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo_12/pages/cart_model.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
    return ListView(
      children: [
        Column(
            children: List.generate(cartList.length, (index) {
          var value;
          return Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                    itemCount: value.cartItems.length,
                    padding: EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8)),
                          child: ListTile(
                            leading: Image.asset(
                              value.cartItems[index][2],
                              height: 36,
                            ),
                            title: Text(
                              value.cartItems[index][0],
                              style: const TextStyle(fontSize: 18),
                            ),
                            subtitle: Text(
                              '\$' + value.cartItems[index][1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.cancel),
                              onPressed: () =>
                                  Provider.of<CartModel>(context, listen: false)
                                      .removeItemFromCart(index),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              // total amount + pay now

              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green,
                  ),
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyle(color: Colors.green[200]),
                          ),

                          const SizedBox(height: 8),
                          // total price
                          Text(
                            '\$${value.calculateTotal()}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // pay now
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green.shade200),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: const [
                            Text(
                              'Pay Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
              // Padding(
              //   padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 140,
              //         height: 180,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             image: DecorationImage(
              //                 image: NetworkImage(cartList[index]['img']),
              //                 fit: BoxFit.cover)),
              //       ),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             cartList[index]['name'],
              //             style: TextStyle(fontSize: 22),
              //           ),
              //           SizedBox(
              //             height: 10,
              //           ),
              //           Text(
              //             "" + cartList[index]['ref'],
              //             style: TextStyle(
              //                 fontSize: 13, color: black.withOpacity(0.7)),
              //           ),
              //           SizedBox(
              //             height: 10,
              //           ),
              //           Text(
              //             cartList[index]['size'],
              //             style: TextStyle(
              //               fontSize: 22,
              //             ),
              //           ),
              //           SizedBox(
              //             height: 40,
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Text(cartList[index]['price'],
              //                   style: TextStyle(
              //                     fontSize: 22,
              //                   )),
              //               SizedBox(
              //                 width: 20,
              //               ),
              //               Row(
              //                 children: [
              //                   Container(
              //                     width: 25,
              //                     height: 25,
              //                     decoration: BoxDecoration(
              //                         shape: BoxShape.circle,
              //                         border: Border.all(
              //                             color: black.withOpacity(0.5))),
              //                     child: Center(
              //                       child: Icon(
              //                         FontAwesomeIcons.minus,
              //                         size: 10,
              //                         color: black.withOpacity(0.5),
              //                       ),
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     width: 10,
              //                   ),
              //                   Text(
              //                     "1",
              //                     style: TextStyle(fontSize: 15),
              //                   ),
              //                   SizedBox(
              //                     width: 10,
              //                   ),
              //                   Container(
              //                     width: 25,
              //                     height: 25,
              //                     decoration: BoxDecoration(
              //                         shape: BoxShape.circle,
              //                         border: Border.all(
              //                             color: black.withOpacity(0.5))),
              //                     child: Center(
              //                       child: Icon(
              //                         FontAwesomeIcons.plus,
              //                         size: 10,
              //                         color: black.withOpacity(0.5),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               )
              //             ],
              //           )
              //         ],
              //       )
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
            ],
          );
        })),
        // Divider(
        //   color: grey.withOpacity(0.8),
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 30, right: 30),
        //   child: Text(
        //     "Do you have a promotion code?",
        //     style: TextStyle(fontSize: 16),
        //   ),
        // ),
        // SizedBox(
        //   height: 15,
        // ),
        // Divider(
        //   color: grey.withOpacity(0.8),
        // ),
        // SizedBox(
        //   height: 15,
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 30, right: 30),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         "Delivery",
        //         style: TextStyle(fontSize: 16),
        //       ),
        //       Text(
        //         "Standard - Free",
        //         style: TextStyle(fontSize: 16),
        //       )
        //     ],
        //   ),
        // ),
        // SizedBox(
        //   height: 30,
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 20, right: 20),
        //   child: Container(
        //     height: 50,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //         color: black, borderRadius: BorderRadius.circular(50 / 2)),
        //     child: Center(
        //       child: Text(
        //         "Buy for \$50".toUpperCase(),
        //         style: TextStyle(color: white, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
