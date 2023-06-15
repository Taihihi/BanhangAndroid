// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:duan/item.dart';

// // class BasketPage extends StatefulWidget {
// //   const BasketPage({super.key});

// //   @override
// //   State<BasketPage> createState() => _BasketPageState();
// // }

// // class _BasketPageState extends State<BasketPage> {
// //   List<Item> basketItems = [];
// //   @override
// //   void initState() {
// //     super.initState();
// //   }

// //   fetchRecords() async {
// //     var recods =
// //         await FirebaseFirestore.instance.collection('basket_items').get();
// //     mapRecods(recods);
// //   }

// //   mapRecods(QuerySnapshot<Map<String, dynamic>> recods) {
// //     var _list = recods.docs
// //         .map(
// //           (item) =>
// //               Item(id: item.id, name: item['name'], quantity: item['quantity']),
// //         )
// //         .toList();
// //     setState(() {
// //       basketItems = _list;
// //     });
// //   }

// //   // final _userStream =
// //   //     FirebaseFirestore.instance.collection('users').snapshots();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Read from Firestore'),
// //         ),
// //         body: ListView.builder(
// //           itemCount: basketItems.length,
// //           itemBuilder: (context, index) {
// //             return ListTile(
// //               title: Text(
// //                 basketItems[index].name,
// //                 style: TextStyle(
// //                   color: Colors.blue, // Đổi màu chữ tại đây
// //                 ),
// //               ),
// //               subtitle: Text(
// //                 basketItems[index].quantity,
// //                 style: TextStyle(
// //                   color: Colors.red, // Đổi màu chữ tại đây
// //                 ),
// //               ),
// //               // title: Text(basketItems[index].name),
// //               // subtitle: Text(basketItems[index].quantity),
// //               // title: Text('item $index'),
// //               // subtitle: Text('item $index description'),
// //             );
// //           },
// //         ));
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:duan/item.dart';

// class BasketPage extends StatefulWidget {
//   const BasketPage({Key? key}) : super(key: key);

//   @override
//   State<BasketPage> createState() => _BasketPageState();
// }

// class _BasketPageState extends State<BasketPage> {
//   List<Item> basketItems = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchRecords();
//   }

//   fetchRecords() async {
//     var records = await FirebaseFirestore.instance.collection('products').get();
//     mapRecords(records);
//   }

//   mapRecords(QuerySnapshot<Map<String, dynamic>> records) {
//     var itemList = records.docs.map((item) {
//       return Item(
//         id: item.id,
//         name: item['name'],
//         quantity: item['quantity'],
//       );
//     }).toList();

//     setState(() {
//       basketItems = itemList;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Read from Firestore'),
//       ),
//       body: ListView.builder(
//         itemCount: basketItems.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(
//               basketItems[index].name,
//               style: TextStyle(
//                 color: Colors.blue,
//               ),
//             ),
//             subtitle: Text(
//               basketItems[index].quantity,
//               style: TextStyle(
//                 color: Colors.red,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
