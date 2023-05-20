// import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:duan/json/constant.dart';
// import 'package:duan/theme/colors.dart';
// import 'package:duan/pages/account_page.dart';
// import 'package:duan/pages/cart_page.dart';
// import 'package:duan/pages/home_page.dart';
// import 'package:duan/pages/more_page.dart';
// import 'package:duan/pages/store_page.dart';

// class AccountPage extends StatefulWidget {
//   @override
//   _AccountPageState createState() => _AccountPageState();
// }

// class _AccountPageState extends State<AccountPage> {
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
//     return ListView(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//           child: Row(
//             children: [
//               Container(
//                 width: 130,
//                 height: 130,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     image: DecorationImage(
//                         image: NetworkImage(profileUrl), fit: BoxFit.cover)),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Daniel",
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Member since 2019",
//                     style:
//                         TextStyle(fontSize: 13, color: black.withOpacity(0.7)),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         color: black, borderRadius: BorderRadius.circular(5)),
//                     child: Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Center(
//                         child: Text(
//                           "EDIT ACCOUNT",
//                           style: TextStyle(fontSize: 13, color: white),
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 40,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Icon(
//                     FontAwesomeIcons.box,
//                     color: black,
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     "Orders",
//                     style: TextStyle(fontSize: 15),
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.map,
//                     color: black,
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     "My Address",
//                     style: TextStyle(fontSize: 15),
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   Icon(
//                     FontAwesomeIcons.box,
//                     color: black,
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     "Setttings",
//                     style: TextStyle(fontSize: 15),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//         Divider(
//           thickness: 1,
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 30, right: 30),
//           child: Column(
//             children: List.generate(accountList.length, (index) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 15),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           accountList[index],
//                           style: TextStyle(fontSize: 16),
//                         ),
//                         Icon(
//                           Icons.arrow_forward_ios,
//                           color: black.withOpacity(0.5),
//                           size: 17,
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Divider(
//                       color: grey.withOpacity(0.8),
//                     )
//                   ],
//                 ),
//               );
//             }),
//           ),
//         )
//       ],
//     );
//   }
// }
