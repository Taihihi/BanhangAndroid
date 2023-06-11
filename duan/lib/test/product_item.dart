// File: widgets/product_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_demo_40/models.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final VoidCallback onPressed;
  final VoidCallback onAddToCartPressed;

  const ProductItem({
    required this.product,
    required this.onPressed,
    required this.onAddToCartPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              product.name,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              '${product.price.toStringAsFixed(2)} đ',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: onAddToCartPressed,
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
