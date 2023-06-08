// import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_demo_14/json/constant.dart';
// import 'package:flutter_demo_14/theme/colors.dart';
// // import 'package:duan/pages/account_page.dart';
// import 'package:flutter_demo_14/pages/cart_page.dart';
// import 'package:flutter_demo_14/pages/home_page.dart';
// import 'package:flutter_demo_14/pages/more_page.dart';
// import 'package:flutter_demo_14/pages/store_page.dart';
// import 'package:flutter_demo_14/appmenu.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_demo_14/pages/cart_model.dart';

// class CartPage extends StatefulWidget {
//   const CartPage({Key? key}) : super(key: key);
//   @override
//   _CartPageState createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: white,
//       body: getBody(),
//       appBar: AppBar(title: const Text('Cloles')),
//       drawer: const AppMenu(),
//     );
//   }

//   Widget getBody() {
//     return ListView(
//       children: [
//         Column(
//             children: List.generate(cartList.length, (index) {
//           var value;
//           return Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: 140,
//                       height: 180,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                               image: NetworkImage(cartList[index]['img']),
//                               fit: BoxFit.cover)),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           cartList[index]['name'],
//                           style: TextStyle(fontSize: 22),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "" + cartList[index]['ref'],
//                           style: TextStyle(
//                               fontSize: 13, color: black.withOpacity(0.7)),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           cartList[index]['size'],
//                           style: TextStyle(
//                             fontSize: 22,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(cartList[index]['price'],
//                                 style: TextStyle(
//                                   fontSize: 22,
//                                 )),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Row(
//                               children: [
//                                 Container(
//                                   width: 25,
//                                   height: 25,
//                                   decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       border: Border.all(
//                                           color: black.withOpacity(0.5))),
//                                   child: Center(
//                                     child: Icon(
//                                       FontAwesomeIcons.minus,
//                                       size: 10,
//                                       color: black.withOpacity(0.5),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Text(
//                                   "1",
//                                   style: TextStyle(fontSize: 15),
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Container(
//                                   width: 25,
//                                   height: 25,
//                                   decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       border: Border.all(
//                                           color: black.withOpacity(0.5))),
//                                   child: Center(
//                                     child: Icon(
//                                       FontAwesomeIcons.plus,
//                                       size: 10,
//                                       color: black.withOpacity(0.5),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//             ],
//           );
//         })),
//         Divider(
//           color: grey.withOpacity(0.8),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 30, right: 30),
//           child: Text(
//             "Do you have a promotion code?",
//             style: TextStyle(fontSize: 16),
//           ),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Divider(
//           color: grey.withOpacity(0.8),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 30, right: 30),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Delivery",
//                 style: TextStyle(fontSize: 16),
//               ),
//               Text(
//                 "Standard - Free",
//                 style: TextStyle(fontSize: 16),
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           child: Container(
//             height: 50,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: black, borderRadius: BorderRadius.circular(50 / 2)),
//             child: Center(
//               child: Text(
//                 "Buy for \$50".toUpperCase(),
//                 style: TextStyle(color: white, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
