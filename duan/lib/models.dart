// File: models.dart

class Product {
  final String id;
  final String name;
  final String image;
  final double price;
  final String description;
  final String rating;
  final String reviews;
  // int quantity;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.rating,
    required this.reviews,
    // this.quantity = 1,
  });
}

class CartItem {
  final String id;
  final Product product;
  int quantity;

  CartItem({
    required this.id,
    required this.product,
    required this.quantity,
  });
}
