// import 'package:flutter/material.dart';
// import 'package:duan/models.dart';

// class ProductDetailPage extends StatelessWidget {
//   final Product product;

//   const ProductDetailPage({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Detail'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Image.asset(
//                 product.image,
//                 width: 200,
//                 height: 200,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               product.name,
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               '\$${product.price.toStringAsFixed(2)}',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // File: screens/product_detail_page.dart
// import 'package:flutter/material.dart';
// import 'package:duan/models.dart';

// class ProductDetailPage extends StatelessWidget {
//   final Product product;

//   const ProductDetailPage({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Detail'),
//       ),
//       body: Column(
//         children: [
//           Image.asset(
//             product.image,
//             fit: BoxFit.cover,
//           ),
//           SizedBox(height: 16.0),
//           Text(
//             product.name,
//             style: TextStyle(
//               fontSize: 24.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 8.0),
//           Text(
//             '\$${product.price.toStringAsFixed(2)}',
//             style: TextStyle(
//               fontSize: 18.0,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// File: screens/product_detail_page.dart
// import 'package:flutter/material.dart';
// import 'package:duan/models.dart';
// import 'package:duan/screens/cart_page.dart';

// class ProductDetailPage extends StatefulWidget {
//   final Product product;

//   ProductDetailPage({required this.product});

//   @override
//   _ProductDetailPageState createState() => _ProductDetailPageState();
// }

// class _ProductDetailPageState extends State<ProductDetailPage> {
//   int quantity = 1;

//   void incrementQuantity() {
//     setState(() {
//       quantity++;
//     });
//   }

//   void decrementQuantity() {
//     if (quantity > 1) {
//       setState(() {
//         quantity--;
//       });
//     }
//   }

//   void addToCart() {
//     final cartItem = CartItem(
//       id: DateTime.now().toString(),
//       product: widget.product,
//       quantity: quantity,
//     );

//     // Add cartItem to cart
//     // ...

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('Added to cart'),
//         duration: Duration(seconds: 1),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Detail'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Image.asset(
//               widget.product.image,
//               height: 200,
//               fit: BoxFit.cover,
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     widget.product.name,
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     '\$${widget.product.price.toStringAsFixed(2)}',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.green,
//                     ),
//                   ),
//                   SizedBox(height: 16.0),
//                   Text(
//                     'Description:',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     widget.product.description,
//                     style: TextStyle(fontSize: 16.0),
//                   ),
//                   SizedBox(height: 16.0),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Quantity:',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           IconButton(
//                             icon: Icon(Icons.remove),
//                             onPressed: decrementQuantity,
//                           ),
//                           Text(quantity.toString()),
//                           IconButton(
//                             icon: Icon(Icons.add),
//                             onPressed: incrementQuantity,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 16.0),
//                   ElevatedButton(
//                     onPressed: addToCart,
//                     child: Text('Add to Cart'),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Related Products',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             // Related Products
//             // ...
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Customer Reviews',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             // Customer Reviews
//             // ...
//           ],
//         ),
//       ),
//     );
//   }
// }

// File: screens/product_detail_page.dart
// import 'package:flutter/material.dart';
// import 'package:duan/models.dart';
// import 'package:duan/screens/cart_page.dart';

// class ProductDetailPage extends StatefulWidget {
//   final Product product;

//   ProductDetailPage({required this.product});

//   @override
//   _ProductDetailPageState createState() => _ProductDetailPageState();
// }

// class _ProductDetailPageState extends State<ProductDetailPage> {
//   int quantity = 1;

//   void incrementQuantity() {
//     setState(() {
//       quantity++;
//     });
//   }

//   void decrementQuantity() {
//     if (quantity > 1) {
//       setState(() {
//         quantity--;
//       });
//     }
//   }

//   void addToCart() {
//     final cartItem = CartItem(
//       id: DateTime.now().toString(),
//       product: widget.product,
//       quantity: quantity,
//     );

//     // Add cartItem to cart
//     // ...

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('Added to cart'),
//         duration: Duration(seconds: 1),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Detail'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Image.asset(
//               widget.product.image,
//               height: 200,
//               fit: BoxFit.cover,
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     widget.product.name,
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     '\$${widget.product.price.toStringAsFixed(2)}',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.green,
//                     ),
//                   ),
//                   SizedBox(height: 16.0),
//                   Text(
//                     'Description:',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     widget.product.description,
//                     style: TextStyle(fontSize: 16.0),
//                   ),
//                   SizedBox(height: 16.0),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Quantity:',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           IconButton(
//                             icon: Icon(Icons.remove),
//                             onPressed: decrementQuantity,
//                           ),
//                           Text(quantity.toString()),
//                           IconButton(
//                             icon: Icon(Icons.add),
//                             onPressed: incrementQuantity,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 16.0),
//                   ElevatedButton(
//                     onPressed: addToCart,
//                     child: Text('Add to Cart'),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Related Products',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             // Related Products
//             // ...
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Customer Reviews',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             // Customer Reviews
//             // ...
//           ],
//         ),
//       ),
//     );
//   }
// }

// File: screens/product_detail_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_demo_14/models.dart';
import 'package:flutter_demo_14/screens/cart_page.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1;

  final Cart cart = Cart(); // Tạo đối tượng giỏ hàng

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  void addToCart() {
    final cartItem = CartItem(
      id: DateTime.now().toString(),
      product: widget.product,
      quantity: quantity,
    );

    cart.addItem(cartItem); // Thêm cartItem vào giỏ hàng

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Đã Thêm Vào Giỏ Hàng'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi Tiết Sản Phẩm'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              widget.product.image,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '${widget.product.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Mô Tả:',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.product.description,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Số Lượng:',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: decrementQuantity,
                          ),
                          Text(quantity.toString()),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: incrementQuantity,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: addToCart,
                    child: Text('Thêm Vào Giỏ Hàng'),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Sản Phẩm Liên Quan',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Các sản phẩm liên quan
            // ...
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Đánh Giá Của Khách Hàng',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Đánh giá của khách hàng
            // ...
          ],
        ),
      ),
    );
  }
}
