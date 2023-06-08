// import 'package:flutter/material.dart';

// class CartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Center(
//         child: Text('Your shopping cart is empty.'),
//       ),
//     );
//   }
// }

// File: screens/cart_page.dart
// import 'package:flutter/material.dart';
// import 'package:duan/models.dart';

// class CartPage extends StatelessWidget {
//   final List<CartItem> cartItems;

//   CartPage({required this.cartItems});

//   double getTotalPrice() {
//     double totalPrice = 0;

//     for (var cartItem in cartItems) {
//       totalPrice += cartItem.product.price * cartItem.quantity;
//     }

//     return totalPrice;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: cartItems.isEmpty
//           ? Center(
//               child: Text('Your shopping cart is empty.'),
//             )
//           : ListView.builder(
//               itemCount: cartItems.length,
//               itemBuilder: (context, index) {
//                 final cartItem = cartItems[index];

//                 return ListTile(
//                   leading: Image.asset(
//                     cartItem.product.image,
//                     width: 50,
//                     height: 50,
//                     fit: BoxFit.cover,
//                   ),
//                   title: Text(cartItem.product.name),
//                   subtitle:
//                       Text('\$${cartItem.product.price.toStringAsFixed(2)}'),
//                   trailing: Text('Quantity: ${cartItem.quantity}'),
//                 );
//               },
//             ),
//       bottomNavigationBar: cartItems.isNotEmpty
//           ? Container(
//               padding: EdgeInsets.all(16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Total: \$${getTotalPrice().toStringAsFixed(2)}',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Perform payment logic here
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Payment successful'),
//                           duration: Duration(seconds: 1),
//                         ),
//                       );
//                     },
//                     child: Text('Checkout'),
//                   ),
//                 ],
//               ),
//             )
//           : null,
//     );
//   }
// }

// File: screens/cart_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_demo_35/models.dart';

class CartPage extends StatefulWidget {
  final List<CartItem> cartItems;

  CartPage({required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class Cart {
  List<CartItem> items = [];

  // void deleteItem(CartItem cartItem) {
  //   items.removeAt(cartItem);
  // }

  void addItem(CartItem cartItem) {
    items.add(cartItem);
  }
}

class _CartPageState extends State<CartPage> {
  double getTotalPrice() {
    double totalPrice = 0;

    for (var cartItem in widget.cartItems) {
      totalPrice += cartItem.product.price * cartItem.quantity;
    }

    return totalPrice;
  }

  void incrementQuantity(CartItem cartItem) {
    setState(() {
      cartItem.quantity++;
    });
  }

  void decrementQuantity(CartItem cartItem) {
    if (cartItem.quantity > 1) {
      setState(() {
        cartItem.quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: widget.cartItems.isEmpty
          ? Center(
              child: Text('Your Shopping Cart Is Empty.'),
            )
          : ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final cartItem = widget.cartItems[index];

                return ListTile(
                  leading: Image.network(
                    cartItem.product.image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(cartItem.product.name),
                  subtitle:
                      Text('${cartItem.product.price.toStringAsFixed(2)}đ'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          decrementQuantity(cartItem);
                        },
                      ),
                      Text(cartItem.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          incrementQuantity(cartItem);
                        },
                      ),
                      // const Spacer(),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // deleteItem(index);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
      bottomNavigationBar: widget.cartItems.isNotEmpty
          ? Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total: ${getTotalPrice().toStringAsFixed(2)} đ',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Perform payment logic here
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Payment Successful'),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                    child: Text('Puy'),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
