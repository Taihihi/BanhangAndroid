// // // // import 'package:duan/home_page.dart';
// // // import 'package:firebase_core/firebase_core.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:duan/basket_page.dart';

// // // Future<void> main() async {
// // //   WidgetsFlutterBinding.ensureInitialized();
// // //   await Firebase.initializeApp();

// // //   runApp(const MaterialApp(
// // //     home: BasketPage(),
// // //   ));
// // // }

// // // class MyApp extends StatelessWidget {
// // //   const MyApp({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return const MaterialApp(
// // //       title: 'Flutter Demo',
// // //       debugShowCheckedModeBanner: false,
// // //       home: BasketPage(),
// // //     );
// // //   }
// // // }

// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firebase Product App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ProductListScreen(),
//     );
//   }
// }

// class ProductListScreen extends StatelessWidget {
//   final CollectionReference productsRef =
//       FirebaseFirestore.instance.collection('products');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product List'),
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: productsRef.snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           }

//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           return ListView(
//             children: snapshot.data!.docs.map((doc) {
//               Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
//               String name = data['name'];
//               int price = data['price'];
//               // String imageURL = data['imageURL'];

//               return ListTile(
//                 // leading: Image.network(imageURL),
//                 title: Text(name),
//                 subtitle: Text('Price: \$${price.toStringAsFixed(2)}'),
//               );
//             }).toList(),
//           );
//         },
//       ),
//     );
//   }
// }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:firebase_core/firebase_core.dart';
// // // // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // // // void main() async {
// // // // //   WidgetsFlutterBinding.ensureInitialized();
// // // // //   await Firebase.initializeApp();
// // // // //   runApp(MyApp());
// // // // // }

// // // // // class MyApp extends StatelessWidget {
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return MaterialApp(
// // // // //       title: 'Firebase Product App',
// // // // //       theme: ThemeData(
// // // // //         primarySwatch: Colors.blue,
// // // // //       ),
// // // // //       home: HomeScreen(),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class HomeScreen extends StatelessWidget {
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Home'),
// // // // //       ),
// // // // //       body: SingleChildScrollView(
// // // // //         child: Column(
// // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // //           children: [
// // // // //             // Danh sách các danh mục
// // // // //             Padding(
// // // // //               padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
// // // // //               child: Row(
// // // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //                 children: [
// // // // //                   Text(
// // // // //                     'Danh mục',
// // // // //                     style:
// // // // //                         TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// // // // //                   ),
// // // // //                   GestureDetector(
// // // // //                     onTap: () {
// // // // //                       Navigator.push(
// // // // //                         context,
// // // // //                         MaterialPageRoute(builder: (_) => CategoryListScreen()),
// // // // //                       );
// // // // //                     },
// // // // //                     child: Text(
// // // // //                       'Xem tất cả',
// // // // //                       style: TextStyle(
// // // // //                         fontSize: 14.0,
// // // // //                         fontWeight: FontWeight.bold,
// // // // //                         color: Colors.blue,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //             ),

// // // // //             // Danh sách sản phẩm
// // // // //             StreamBuilder<QuerySnapshot>(
// // // // //               stream:
// // // // //                   FirebaseFirestore.instance.collection('products').snapshots(),
// // // // //               builder: (BuildContext context,
// // // // //                   AsyncSnapshot<QuerySnapshot> snapshot) {
// // // // //                 if (snapshot.hasError) {
// // // // //                   return Text('Đã xảy ra lỗi');
// // // // //                 }

// // // // //                 if (snapshot.connectionState == ConnectionState.waiting) {
// // // // //                   return Center(
// // // // //                     child: CircularProgressIndicator(),
// // // // //                   );
// // // // //                 }

// // // // //                 return GridView.builder(
// // // // //                   physics: NeverScrollableScrollPhysics(),
// // // // //                   shrinkWrap: true,
// // // // //                   itemCount: snapshot.data!.docs.length,
// // // // //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // // // //                     crossAxisCount: 2,
// // // // //                     childAspectRatio: 0.75,
// // // // //                     crossAxisSpacing: 10.0,
// // // // //                     mainAxisSpacing: 10.0,
// // // // //                   ),
// // // // //                   itemBuilder: (BuildContext context, int index) {
// // // // //                     var doc = snapshot.data!.docs[index];
// // // // //                     var data = doc.data() as Map<String, dynamic>;
// // // // //                     var id = doc.id;
// // // // //                     var name = data['name'] ?? 'Tên sản phẩm không khả dụng';
// // // // //                     var imageUrl = data['imageUrl'];
// // // // //                     var price =
// // // // //                         data['price']?.toString() ?? 'Giá không khả dụng';

// // // // //                     return GestureDetector(
// // // // //                       onTap: () {
// // // // //                         Navigator.push(
// // // // //                           context,
// // // // //                           MaterialPageRoute(
// // // // //                             builder: (_) => ProductDetailScreen(
// // // // //                               productId: id,
// // // // //                               productName: name,
// // // // //                               productImageUrl: imageUrl,
// // // // //                               productPrice: price,
// // // // //                             ),
// // // // //                           ),
// // // // //                         );
// // // // //                       },
// // // // //                       child: Container(
// // // // //                         decoration: BoxDecoration(
// // // // //                           color: Colors.white,
// // // // //                           borderRadius: BorderRadius.circular(5.0),
// // // // //                           boxShadow: [
// // // // //                             BoxShadow(
// // // // //                               color: Colors.grey.withOpacity(0.5),
// // // // //                               spreadRadius: 1.0,
// // // // //                               blurRadius: 1.0,
// // // // //                             ),
// // // // //                           ],
// // // // //                         ),
// // // // //                         child: Column(
// // // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                           children: [
// // // // //                             Expanded(
// // // // //                               child: Container(
// // // // //                                 decoration: BoxDecoration(
// // // // //                                   image: DecorationImage(
// // // // //                                     image: NetworkImage(imageUrl),
// // // // //                                     fit: BoxFit.cover,
// // // // //                                   ),
// // // // //                                   borderRadius: BorderRadius.circular(5.0),
// // // // //                                 ),
// // // // //                               ),
// // // // //                             ),
// // // // //                             Padding(
// // // // //                               padding: EdgeInsets.only(left: 8.0, top: 8.0),
// // // // //                               child: Text(
// // // // //                                 name,
// // // // //                                 style: TextStyle(fontSize: 16.0),
// // // // //                               ),
// // // // //                             ),
// // // // //                             Padding(
// // // // //                               padding: EdgeInsets.only(left: 8.0, top: 4.0),
// // // // //                               child: Text(
// // // // //                                 '\$$price',
// // // // //                                 style: TextStyle(
// // // // //                                     fontSize: 16.0,
// // // // //                                     fontWeight: FontWeight.bold),
// // // // //                               ),
// // // // //                             ),
// // // // //                           ],
// // // // //                         ),
// // // // //                       ),
// // // // //                     );
// // // // //                   },
// // // // //                 );
// // // // //               },
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class CategoryListScreen extends StatelessWidget {
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Danh mục'),
// // // // //       ),
// // // // //       body: Center(
// // // // //         child: Text('Đây là màn hình danh mục'),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class ProductDetailScreen extends StatelessWidget {
// // // // //   final String productId;
// // // // //   final String productName;
// // // // //   final String productImageUrl;
// // // // //   final String productPrice;

// // // // //   const ProductDetailScreen({
// // // // //     required this.productId,
// // // // //     required this.productName,
// // // // //     required this.productImageUrl,
// // // // //     required this.productPrice,
// // // // //   });

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text(productName),
// // // // //       ),
// // // // //       body: Center(
// // // // //         child: Column(
// // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // //           children: [
// // // // //             Image.network(
// // // // //               productImageUrl,
// // // // //               width: 200.0,
// // // // //               height: 200.0,
// // // // //               fit: BoxFit.contain,
// // // // //             ),
// // // // //             SizedBox(height: 20.0),
// // // // //             Text(
// // // // //               productName,
// // // // //               style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// // // // //             ),
// // // // //             SizedBox(height: 20.0),
// // // // //             Text(
// // // // //               '\$$productPrice',
// // // // //               style: TextStyle(fontSize: 18.0),
// // // // //             ),
// // // // //             SizedBox(height: 20.0),
// // // // //             ElevatedButton(
// // // // //               onPressed: () {
// // // // //                 // TODO: Thêm sản phẩm vào giỏ hàng
// // // // //               },
// // // // //               child: Text('Thêm vào giỏ hàng'),
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // import 'package:flutter/material.dart';
// // // // import 'package:firebase_core/firebase_core.dart';
// // // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // // void main() async {
// // // //   WidgetsFlutterBinding.ensureInitialized();
// // // //   await Firebase.initializeApp();
// // // //   runApp(MyApp());
// // // // }

// // // // class MyApp extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       title: 'Firebase Product App',
// // // //       theme: ThemeData(
// // // //         primarySwatch: Colors.blue,
// // // //       ),
// // // //       home: HomeScreen(),
// // // //     );
// // // //   }
// // // // }

// // // // class HomeScreen extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Home'),
// // // //       ),
// // // //       body: SingleChildScrollView(
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             // Danh sách các danh mục
// // // //             Padding(
// // // //               padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
// // // //               child: Row(
// // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //                 children: [
// // // //                   Text(
// // // //                     'Danh mục',
// // // //                     style:
// // // //                         TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// // // //                   ),
// // // //                   GestureDetector(
// // // //                     onTap: () {
// // // //                       Navigator.push(
// // // //                         context,
// // // //                         MaterialPageRoute(builder: (_) => CategoryListScreen()),
// // // //                       );
// // // //                     },
// // // //                     child: Text(
// // // //                       'Xem tất cả',
// // // //                       style: TextStyle(
// // // //                         fontSize: 14.0,
// // // //                         fontWeight: FontWeight.bold,
// // // //                         color: Colors.blue,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ),

// // // //             // Danh sách sản phẩm
// // // //             StreamBuilder<QuerySnapshot>(
// // // //               stream:
// // // //                   FirebaseFirestore.instance.collection('products').snapshots(),
// // // //               builder: (BuildContext context,
// // // //                   AsyncSnapshot<QuerySnapshot> snapshot) {
// // // //                 if (snapshot.hasError) {
// // // //                   return Text('Đã xảy ra lỗi');
// // // //                 }

// // // //                 if (snapshot.connectionState == ConnectionState.waiting) {
// // // //                   return Center(
// // // //                     child: CircularProgressIndicator(),
// // // //                   );
// // // //                 }

// // // //                 return GridView.builder(
// // // //                   physics: NeverScrollableScrollPhysics(),
// // // //                   shrinkWrap: true,
// // // //                   itemCount: snapshot.data!.docs.length,
// // // //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // // //                     crossAxisCount: 2,
// // // //                     childAspectRatio: 0.75,
// // // //                     crossAxisSpacing: 10.0,
// // // //                     mainAxisSpacing: 10.0,
// // // //                   ),
// // // //                   itemBuilder: (BuildContext context, int index) {
// // // //                     var doc = snapshot.data!.docs[index];
// // // //                     var data = doc.data() as Map<String, dynamic>;
// // // //                     var id = doc.id;
// // // //                     var name = data['name'] ?? 'Tên sản phẩm không khả dụng';
// // // //                     var imageUrl = data['imageUrl'];
// // // //                     var price =
// // // //                         data['price']?.toString() ?? 'Giá không khả dụng';

// // // //                     return GestureDetector(
// // // //                       onTap: () {
// // // //                         Navigator.push(
// // // //                           context,
// // // //                           MaterialPageRoute(
// // // //                             builder: (_) => ProductDetailScreen(
// // // //                               productId: id,
// // // //                               productName: name,
// // // //                               productImageUrl: imageUrl,
// // // //                               productPrice: price,
// // // //                             ),
// // // //                           ),
// // // //                         );
// // // //                       },
// // // //                       child: Container(
// // // //                         decoration: BoxDecoration(
// // // //                           color: Colors.white,
// // // //                           borderRadius: BorderRadius.circular(5.0),
// // // //                           boxShadow: [
// // // //                             BoxShadow(
// // // //                               color: Colors.grey.withOpacity(0.5),
// // // //                               spreadRadius: 1.0,
// // // //                               blurRadius: 1.0,
// // // //                             ),
// // // //                           ],
// // // //                         ),
// // // //                         child: Column(
// // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // //                           children: [
// // // //                             Expanded(
// // // //                               child: Container(
// // // //                                 decoration: BoxDecoration(
// // // //                                   image: DecorationImage(
// // // //                                     image: imageUrl != null
// // // //                                         ? NetworkImage(imageUrl)
// // // //                                         : AssetImage('assets/3.webp'),
// // // //                                     fit: BoxFit.cover,
// // // //                                   ),
// // // //                                   borderRadius: BorderRadius.circular(5.0),
// // // //                                 ),
// // // //                               ),
// // // //                             ),
// // // //                             Padding(
// // // //                               padding: EdgeInsets.only(left: 8.0, top: 8.0),
// // // //                               child: Text(
// // // //                                 name,
// // // //                                 style: TextStyle(fontSize: 16.0),
// // // //                               ),
// // // //                             ),
// // // //                             Padding(
// // // //                               padding: EdgeInsets.only(left: 8.0, top: 4.0),
// // // //                               child: Text(
// // // //                                 '\$$price',
// // // //                                 style: TextStyle(
// // // //                                     fontSize: 16.0,
// // // //                                     fontWeight: FontWeight.bold),
// // // //                               ),
// // // //                             ),
// // // //                           ],
// // // //                         ),
// // // //                       ),
// // // //                     );
// // // //                   },
// // // //                 );
// // // //               },
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class CategoryListScreen extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Danh mục'),
// // // //       ),
// // // //       body: Center(
// // // //         child: Text('Đây là màn hình danh mục'),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class ProductDetailScreen extends StatelessWidget {
// // // //   final String productId;
// // // //   final String productName;
// // // //   final String productImageUrl;
// // // //   final String productPrice;

// // // //   const ProductDetailScreen({
// // // //     required this.productId,
// // // //     required this.productName,
// // // //     required this.productImageUrl,
// // // //     required this.productPrice,
// // // //   });

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text(productName),
// // // //       ),
// // // //       body: Center(
// // // //         child: Column(
// // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // //           children: [
// // // //             Image.network(
// // // //               productImageUrl,
// // // //               width: 200.0,
// // // //               height: 200.0,
// // // //               fit: BoxFit.contain,
// // // //             ),
// // // //             SizedBox(height: 20.0),
// // // //             Text(
// // // //               productName,
// // // //               style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// // // //             ),
// // // //             SizedBox(height: 20.0),
// // // //             Text(
// // // //               '\$$productPrice',
// // // //               style: TextStyle(fontSize: 18.0),
// // // //             ),
// // // //             SizedBox(height: 20.0),
// // // //             ElevatedButton(
// // // //               onPressed: () {
// // // //                 // TODO: Thêm sản phẩm vào giỏ hàng
// // // //               },
// // // //               child: Text('Thêm vào giỏ hàng'),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:firebase_core/firebase_core.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // void main() async {
// // //   WidgetsFlutterBinding.ensureInitialized();
// // //   await Firebase.initializeApp();
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Firebase Product App',
// // //       theme: ThemeData(
// // //         primarySwatch: Colors.blue,
// // //       ),
// // //       home: HomeScreen(),
// // //     );
// // //   }
// // // }

// // // class HomeScreen extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Home'),
// // //       ),
// // //       body: SingleChildScrollView(
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             // Danh sách các danh mục
// // //             Padding(
// // //               padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
// // //               child: Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                 children: [
// // //                   Text(
// // //                     'Danh mục',
// // //                     style:
// // //                         TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// // //                   ),
// // //                   GestureDetector(
// // //                     onTap: () {
// // //                       Navigator.push(
// // //                         context,
// // //                         MaterialPageRoute(builder: (_) => CategoryListScreen()),
// // //                       );
// // //                     },
// // //                     child: Text(
// // //                       'Xem tất cả',
// // //                       style: TextStyle(
// // //                         fontSize: 14.0,
// // //                         fontWeight: FontWeight.bold,
// // //                         color: Colors.blue,
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),

// // //             // Danh sách sản phẩm
// // //             StreamBuilder<QuerySnapshot>(
// // //               stream:
// // //                   FirebaseFirestore.instance.collection('products').snapshots(),
// // //               builder: (BuildContext context,
// // //                   AsyncSnapshot<QuerySnapshot> snapshot) {
// // //                 if (snapshot.hasError) {
// // //                   return Text('Đã xảy ra lỗi');
// // //                 }

// // //                 if (snapshot.connectionState == ConnectionState.waiting) {
// // //                   return Center(
// // //                     child: CircularProgressIndicator(),
// // //                   );
// // //                 }

// // //                 return GridView.builder(
// // //                   physics: NeverScrollableScrollPhysics(),
// // //                   shrinkWrap: true,
// // //                   itemCount: snapshot.data!.docs.length,
// // //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //                     crossAxisCount: 2,
// // //                     childAspectRatio: 0.75,
// // //                     crossAxisSpacing: 10.0,
// // //                     mainAxisSpacing: 10.0,
// // //                   ),
// // //                   itemBuilder: (BuildContext context, int index) {
// // //                     var doc = snapshot.data!.docs[index];
// // //                     var data = doc.data() as Map<String, dynamic>;
// // //                     var id = doc.id;
// // //                     var name = data['name'] ?? 'Tên sản phẩm không khả dụng';
// // //                     var imageUrl = data['imageUrl'];
// // //                     var price =
// // //                         data['price']?.toString() ?? 'Giá không khả dụng';

// // //                     return GestureDetector(
// // //                       onTap: () {
// // //                         Navigator.push(
// // //                           context,
// // //                           MaterialPageRoute(
// // //                             builder: (_) => ProductDetailScreen(
// // //                               productId: id,
// // //                               productName: name,
// // //                               productImageUrl: imageUrl,
// // //                               productPrice: price,
// // //                             ),
// // //                           ),
// // //                         );
// // //                       },
// // //                       child: Container(
// // //                         decoration: BoxDecoration(
// // //                           color: Colors.white,
// // //                           borderRadius: BorderRadius.circular(5.0),
// // //                           boxShadow: [
// // //                             BoxShadow(
// // //                               color: Colors.grey.withOpacity(0.5),
// // //                               spreadRadius: 1.0,
// // //                               blurRadius: 1.0,
// // //                             ),
// // //                           ],
// // //                         ),
// // //                         child: Column(
// // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // //                           children: [
// // //                             Expanded(
// // //                               child: Container(
// // //                                 decoration: BoxDecoration(
// // //                                   image: DecorationImage(
// // //                                     image: imageUrl != null
// // //                                         ? NetworkImage(imageUrl)
// // //                                         : AssetImage('assets/3.webp'),
// // //                                     fit: BoxFit.cover,
// // //                                   ),
// // //                                   borderRadius: BorderRadius.circular(5.0),
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             Padding(
// // //                               padding: EdgeInsets.only(left: 8.0, top: 8.0),
// // //                               child: Text(
// // //                                 name,
// // //                                 style: TextStyle(fontSize: 16.0),
// // //                               ),
// // //                             ),
// // //                             Padding(
// // //                               padding: EdgeInsets.only(left: 8.0, top: 4.0),
// // //                               child: Text(
// // //                                 '\$$price',
// // //                                 style: TextStyle(
// // //                                     fontSize: 16.0,
// // //                                     fontWeight: FontWeight.bold),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     );
// // //                   },
// // //                 );
// // //               },
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class CategoryListScreen extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Danh mục'),
// // //       ),
// // //       body: Center(
// // //         child: Text('Đây là màn hình danh mục'),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class ProductDetailScreen extends StatelessWidget {
// // //   final String productId;
// // //   final String productName;
// // //   final String productImageUrl;
// // //   final String productPrice;

// // //   const ProductDetailScreen({
// // //     required this.productId,
// // //     required this.productName,
// // //     required this.productImageUrl,
// // //     required this.productPrice,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text(productName),
// // //       ),
// // //       body: Center(
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             Image.network(
// // //               productImageUrl,
// // //               width: 200.0,
// // //               height: 200.0,
// // //               fit: BoxFit.contain,
// // //             ),
// // //             SizedBox(height: 20.0),
// // //             Text(
// // //               productName,
// // //               style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// // //             ),
// // //             SizedBox(height: 20.0),
// // //             Text(
// // //               '\$$productPrice',
// // //               style: TextStyle(fontSize: 18.0),
// // //             ),
// // //             SizedBox(height: 20.0),
// // //             ElevatedButton(
// // //               onPressed: () {
// // //                 // TODO: Thêm sản phẩm vào giỏ hàng
// // //               },
// // //               child: Text('Thêm vào giỏ hàng'),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:firebase_core/firebase_core.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // void main() async {
// // //   WidgetsFlutterBinding.ensureInitialized();
// // //   await Firebase.initializeApp();
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Firebase Product App',
// // //       theme: ThemeData(
// // //         primarySwatch: Colors.blue,
// // //       ),
// // //       home: HomeScreen(),
// // //     );
// // //   }
// // // }

// // // class HomeScreen extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Home'),
// // //       ),
// // //       body: SingleChildScrollView(
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             // Danh sách các danh mục
// // //             Padding(
// // //               padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
// // //               child: Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                 children: [
// // //                   Text(
// // //                     'Danh mục',
// // //                     style:
// // //                         TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// // //                   ),
// // //                   GestureDetector(
// // //                     onTap: () {
// // //                       Navigator.push(
// // //                         context,
// // //                         MaterialPageRoute(builder: (_) => CategoryListScreen()),
// // //                       );
// // //                     },
// // //                     child: Text(
// // //                       'Xem tất cả',
// // //                       style: TextStyle(
// // //                         fontSize: 14.0,
// // //                         fontWeight: FontWeight.bold,
// // //                         color: Colors.blue,
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),

// // //             // Danh sách sản phẩm
// // //             StreamBuilder<QuerySnapshot>(
// // //               stream:
// // //                   FirebaseFirestore.instance.collection('products').snapshots(),
// // //               builder: (BuildContext context,
// // //                   AsyncSnapshot<QuerySnapshot> snapshot) {
// // //                 if (snapshot.hasError) {
// // //                   return Text('Đã xảy ra lỗi');
// // //                 }

// // //                 if (snapshot.connectionState == ConnectionState.waiting) {
// // //                   return Center(
// // //                     child: CircularProgressIndicator(),
// // //                   );
// // //                 }

// // //                 return GridView.builder(
// // //                   physics: NeverScrollableScrollPhysics(),
// // //                   shrinkWrap: true,
// // //                   itemCount: snapshot.data!.docs.length,
// // //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //                     crossAxisCount: 2,
// // //                     childAspectRatio: 0.75,
// // //                     crossAxisSpacing: 10.0,
// // //                     mainAxisSpacing: 10.0,
// // //                   ),
// // //                   itemBuilder: (BuildContext context, int index) {
// // //                     var doc = snapshot.data!.docs[index];
// // //                     var data = doc.data() as Map<String, dynamic>;
// // //                     var id = doc.id;
// // //                     var name = data['name'] ?? 'Tên sản phẩm không khả dụng';
// // //                     var imageUrl = data['imageUrl'];
// // //                     var price =
// // //                         data['price']?.toString() ?? 'Giá không khả dụng';

// // //                     return GestureDetector(
// // //                       onTap: () {
// // //                         Navigator.push(
// // //                           context,
// // //                           MaterialPageRoute(
// // //                             builder: (_) => ProductDetailScreen(
// // //                               productId: id,
// // //                               productName: name,
// // //                               productImageUrl: imageUrl,
// // //                               productPrice: price,
// // //                             ),
// // //                           ),
// // //                         );
// // //                       },
// // //                       child: Container(
// // //                         decoration: BoxDecoration(
// // //                           color: Colors.white,
// // //                           borderRadius: BorderRadius.circular(5.0),
// // //                           boxShadow: [
// // //                             BoxShadow(
// // //                               color: Colors.grey.withOpacity(0.5),
// // //                               spreadRadius: 1.0,
// // //                               blurRadius: 1.0,
// // //                             ),
// // //                           ],
// // //                         ),
// // //                         child: Column(
// // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // //                           children: [
// // //                             Expanded(
// // //                               child: Container(
// // //                                 decoration: BoxDecoration(
// // //                                   image: DecorationImage(
// // //                                     image: imageUrl != null
// // //                                         ? NetworkImage(imageUrl)
// // //                                         : NetworkImage(
// // //                                             'https://canifa.com/img/486/733/resize/8/t/8tp23s001-sb194-2.webp'), // Thay đổi URL hình ảnh tạm thời tại đây
// // //                                     fit: BoxFit.cover,
// // //                                   ),
// // //                                   borderRadius: BorderRadius.circular(5.0),
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             Padding(
// // //                               padding: EdgeInsets.only(left: 8.0, top: 8.0),
// // //                               child: Text(
// // //                                 name,
// // //                                 style: TextStyle(fontSize: 16.0),
// // //                               ),
// // //                             ),
// // //                             Padding(
// // //                               padding: EdgeInsets.only(left: 8.0, top: 4.0),
// // //                               child: Text(
// // //                                 '\$$price',
// // //                                 style: TextStyle(
// // //                                     fontSize: 16.0,
// // //                                     fontWeight: FontWeight.bold),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     );
// // //                   },
// // //                 );
// // //               },
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class CategoryListScreen extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Danh mục'),
// // //       ),
// // //       body: Center(
// // //         child: Text('Đây là màn hình danh mục'),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class ProductDetailScreen extends StatelessWidget {
// // //   final String productId;
// // //   final String productName;
// // //   final String productImageUrl;
// // //   final String productPrice;

// // //   const ProductDetailScreen({
// // //     required this.productId,
// // //     required this.productName,
// // //     required this.productImageUrl,
// // //     required this.productPrice,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text(productName),
// // //       ),
// // //       body: Center(
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             Image.network(
// // //               productImageUrl,
// // //               width: 200.0,
// // //               height: 200.0,
// // //               fit: BoxFit.contain,
// // //             ),
// // //             SizedBox(height: 20.0),
// // //             Text(
// // //               productName,
// // //               style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// // //             ),
// // //             SizedBox(height: 20.0),
// // //             Text(
// // //               '\$$productPrice',
// // //               style: TextStyle(fontSize: 18.0),
// // //             ),
// // //             SizedBox(height: 20.0),
// // //             ElevatedButton(
// // //               onPressed: () {
// // //                 // TODO: Thêm sản phẩm vào giỏ hàng
// // //               },
// // //               child: Text('Thêm vào giỏ hàng'),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // //file main.dart
// // import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:duan/widget_tree.dart';

// // Future<void> main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp();
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'SHOP TTT',
// //       theme: ThemeData(
// //         primarySwatch: Colors.orange,
// //       ),
// //       home: const WidgetTree(),
// //     );
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:duan/pages/home_page.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:duan/utils/prefs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your8 application.
  @override
  Widget build(BuildContext context) {
    // Prefs.init();
    return const MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
    );
  }
}
