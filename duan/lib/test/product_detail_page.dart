// import 'package:flutter/material.dart';
// import 'package:duan/product.dart';

// class ProductDetailPage extends StatefulWidget {
//   @override
//   _ProductDetailPageState createState() => _ProductDetailPageState();
// }

// class _ProductDetailPageState extends State<ProductDetailPage> {
//   int quantity = 0;

//   void _decreaseQuantity() {
//     setState(() {
//       if (quantity > 0) {
//         quantity--;
//       }
//     });
//   }

//   void _increaseQuantity() {
//     setState(() {
//       quantity++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Product product =
//         ModalRoute.of(context)!.settings.arguments as Product;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Detail'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               // TODO: Implement search functionality
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {
//               // TODO: Implement shopping cart functionality
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.settings),
//             onPressed: () {
//               // TODO: Implement notification functionality
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.asset(
//             product.imageUrl,
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: 300.0,
//           ),
//           SizedBox(height: 20.0),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text(
//               product.name,
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           SizedBox(height: 10.0),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text(
//               'Price: ${product.price} VND',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue,
//               ),
//             ),
//           ),
//           SizedBox(height: 10.0),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Row(
//               children: [
//                 Text(
//                   'Quantity:',
//                   style: TextStyle(fontSize: 18.0),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.remove),
//                   onPressed: _decreaseQuantity,
//                 ),
//                 Text(
//                   quantity.toString(),
//                   style: TextStyle(fontSize: 14.0),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.add),
//                   onPressed: _increaseQuantity,
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 10.0),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Row(
//               children: [
//                 Text(
//                   'Rating: ${product.rating}',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(width: 10.0),
//                 Icon(
//                   Icons.star,
//                   color: Colors.yellow,
//                 ),
//                 SizedBox(width: 5.0),
//                 Text(
//                   '(${product.reviews} reviews)',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20.0),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text(
//               'Description:',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(height: 10.0),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text(
//               product.description,
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ),
//           SizedBox(height: 20.0),
//         ],
//       ),
//     );
//   }
// }

//file product_detail_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_demo_40/product.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 0;

  void _decreaseQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  void _increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _addToCart() {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;
    product.quantity = quantity;
    Navigator.pushNamed(context, '/cart', arguments: product);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Product added to cart')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            product.imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300.0,
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              product.name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Price: ${product.price} VND',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  'Quantity:',
                  style: TextStyle(fontSize: 18.0),
                ),
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: _decreaseQuantity,
                ),
                Text(
                  quantity.toString(),
                  style: TextStyle(fontSize: 14.0),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _increaseQuantity,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  'Rating: ${product.rating}',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10.0),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(width: 5.0),
                Text(
                  '(${product.reviews} reviews)',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Description:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              product.description,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              child: Text('Add to Cart'),
              onPressed: _addToCart,
            ),
          ),
        ],
      ),
    );
  }
}
