// import 'package:flutter/material.dart';
// // import 'package:flutter_icons/flutter_icons.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_demo_10/json/constant.dart';
// import 'package:flutter_demo_10/theme/colors.dart';
// import 'package:flutter_demo_10/pages/home_page.dart';
// import 'package:flutter_demo_10/pages/account_page.dart';
// import 'package:flutter_demo_10/pages/cart_page.dart';
// import 'package:flutter_demo_10/pages/home_page.dart';
// import 'package:flutter_demo_10/pages/more_page.dart';
// import 'package:flutter_demo_10/pages/store_page.dart';
// import 'package:flutter_demo_10/cloles/cloles1.dart';
// import 'package:flutter_demo_10/cloles/cloles2.dart';
// import 'package:flutter_demo_10/cloles/cloles3.dart';
// import 'package:flutter_demo_10/cloles/cloles4.dart';
// import 'package:flutter_demo_10/cloles/cloles5.dart';

// class Cloles6 extends StatefulWidget {
//   const Cloles6({Key? key}) : super(key: key);
//   @override
//   State<Cloles6> createState() => _StorePageState();
// }

// class _StorePageState extends State<Cloles6> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: white,
//       body: getBody(),
//       appBar: AppBar(title: const Text('Cloles')),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.lightBlue),
//               child: Text('Cloles',
//                   textScaleFactor: 1.5, style: TextStyle(color: Colors.white)),
//             ),
//             ListTile(
//               leading: const Icon(Icons.home),
//               title: const Text("Home"),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => HomePage(),
//                   ),
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.shop),
//               title: const Text("Store"),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => StorePage(),
//                   ),
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.verified_user),
//               title: const Text("Account"),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => AccountPage(),
//                   ),
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.shopping_cart),
//               title: const Text("Cart"),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => CartPage(),
//                   ),
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.more_horiz),
//               title: const Text("More"),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => MorePage(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget getBody() {
//     return SafeArea(
//       child: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Text(
//                   "Phnom Penh",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Icon(
//                   Icons.map,
//                   size: 20,
//                 )
//               ],
//             ),
//           ),
//           // SizedBox(
//           //   height: 40,
//           // ),
//           // Padding(
//           //   padding: const EdgeInsets.only(left: 20, right: 20),
//           //   child: Text(
//           //     "Find all stores here",
//           //     style: TextStyle(
//           //         fontSize: 30, height: 1.5, fontWeight: FontWeight.w400),
//           //   ),
//           // ),
//           SizedBox(
//             height: 40,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20),
//             child: Row(
//               children: [
//                 Flexible(
//                     child: Container(
//                   height: 45,
//                   decoration: BoxDecoration(
//                       color: grey.withOpacity(0.2),
//                       borderRadius: BorderRadius.circular(30)),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: TextField(
//                       cursorColor: primary,
//                       decoration: InputDecoration(
//                           border: InputBorder.none,
//                           suffixIcon: Icon(
//                             Feather.search,
//                             size: 20,
//                           ),
//                           hintText: "Search"),
//                     ),
//                   ),
//                 )),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   height: 45,
//                   width: 45,
//                   decoration:
//                       BoxDecoration(color: black, shape: BoxShape.circle),
//                   child: Center(
//                     child: Icon(
//                       Icons.search,
//                       color: white,
//                       size: 20,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           Divider(color: grey.withOpacity(0.8)),
//           SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20),
//             child: Text(
//               // "All stores",
//               "Cloles",
//               style: TextStyle(fontSize: 22, color: black),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Column(
//               children: List.generate(storeList.length, (index) {
//             return Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 15),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               width: 140,
//                               height: 180,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(1),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                           recommends[index]['imgUrl']),
//                                       fit: BoxFit.cover)),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Container(
//                               width: 140,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     recommends[index]['title'],
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: black,
//                                         height: 1.5),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text(
//                                     "\$ " + recommends[index]['price'],
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: grey,
//                                         height: 1.5),
//                                   ),
//                                   ElevatedButton(
//                                       onPressed: () {
//                                         Navigator.pushAndRemoveUntil(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) => Cloles1(),
//                                             ),
//                                             (route) => false);
//                                       },
//                                       child: Align(
//                                         alignment: Alignment.topRight,
//                                         child: const Text('Shop >>>',
//                                             style: TextStyle(
//                                                 fontSize: 10,
//                                                 color: white,
//                                                 fontWeight: FontWeight.bold)),
//                                       ))
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 15),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   width: 140,
//                                   height: 180,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(1),
//                                       image: DecorationImage(
//                                           image: NetworkImage(
//                                               recommends2[index]['imgUrl']),
//                                           fit: BoxFit.cover)),
//                                 ),
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 Container(
//                                   width: 140,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         recommends2[index]['title'],
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: black,
//                                             height: 1.5),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text(
//                                         "\$ " + recommends2[index]['price'],
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: grey,
//                                             height: 1.5),
//                                       ),
//                                       ElevatedButton(
//                                           onPressed: () {
//                                             Navigator.pushAndRemoveUntil(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       Cloles1(),
//                                                 ),
//                                                 (route) => false);
//                                           },
//                                           child: Align(
//                                             alignment: Alignment.topRight,
//                                             child: const Text('Shop >>>',
//                                                 style: TextStyle(
//                                                     fontSize: 10,
//                                                     color: white,
//                                                     fontWeight:
//                                                         FontWeight.bold)),
//                                           ))
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 140,
//                         height: 180,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(1),
//                             image: DecorationImage(
//                                 image: NetworkImage(storeList3[index]['img']),
//                                 fit: BoxFit.cover)),
//                         child: Container(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               ElevatedButton(
//                                   onPressed: () {
//                                     Navigator.pushAndRemoveUntil(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Cloles3(),
//                                         ),
//                                         (route) => false);
//                                   },
//                                   child: Align(
//                                     alignment: Alignment.topRight,
//                                     child: const Text('>>>',
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             color: white,
//                                             fontWeight: FontWeight.bold)),
//                                   ))
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             width: 140,
//                             height: 180,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(1),
//                                 image: DecorationImage(
//                                     image:
//                                         NetworkImage(storeList4[index]['img']),
//                                     fit: BoxFit.cover)),
//                             child: Container(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   ElevatedButton(
//                                       onPressed: () {
//                                         Navigator.pushAndRemoveUntil(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) => Cloles4(),
//                                             ),
//                                             (route) => false);
//                                       },
//                                       child: Align(
//                                         alignment: Alignment.topRight,
//                                         child: const Text('>>>',
//                                             style: TextStyle(
//                                                 fontSize: 15,
//                                                 color: white,
//                                                 fontWeight: FontWeight.bold)),
//                                       ))
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 140,
//                         height: 180,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(1),
//                             image: DecorationImage(
//                                 image: NetworkImage(storeList5[index]['img']),
//                                 fit: BoxFit.cover)),
//                         child: Container(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               ElevatedButton(
//                                   onPressed: () {
//                                     Navigator.pushAndRemoveUntil(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Cloles5(),
//                                         ),
//                                         (route) => false);
//                                   },
//                                   child: Align(
//                                     alignment: Alignment.topRight,
//                                     child: const Text('>>>',
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             color: white,
//                                             fontWeight: FontWeight.bold)),
//                                   ))
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             width: 140,
//                             height: 180,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(1),
//                                 image: DecorationImage(
//                                     image:
//                                         NetworkImage(storeList2[index]['img']),
//                                     fit: BoxFit.cover)),
//                             child: Container(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   ElevatedButton(
//                                       onPressed: () {
//                                         Navigator.pushAndRemoveUntil(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) => Cloles2(),
//                                             ),
//                                             (route) => false);
//                                       },
//                                       child: Align(
//                                         alignment: Alignment.topRight,
//                                         child: const Text('>>>',
//                                             style: TextStyle(
//                                                 fontSize: 15,
//                                                 color: white,
//                                                 fontWeight: FontWeight.bold)),
//                                       ))
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           })),
//         ],
//       ),
//     );
//   }
// }

// class Feather {
//   static IconData? search;
// }
