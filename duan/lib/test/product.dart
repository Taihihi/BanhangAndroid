//file product.dart

class Product {
  final String imageUrl;
  final String name;
  final String price;
  int quantity;
  final String description;
  final double rating;
  final int reviews;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
    this.quantity = 1,
    required this.description,
    required this.rating,
    required this.reviews,
  });
}
