// File: screens/product_detail_page.dart
import 'package:flutter/material.dart';
import 'package:duan/models.dart';
import 'package:duan/screens/cart_page.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1;

  final Cart cart = Cart(); // Tạo đối tượng giỏ hàng

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
            Image.asset(
              widget.product.image,
              height: 400,
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Text(
                      'Price: ${widget.product.price} VND',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
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
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      children: [
                        Text(
                          'Rating: ${widget.product.rating}',
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
                          '(${widget.product.reviews} reviews)',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Text(
                      'Description:',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Text(
                      widget.product.description,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Text(
                    widget.product.description,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: ElevatedButton(
                      child: Text('Add to Cart'),
                      onPressed: addToCart,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
