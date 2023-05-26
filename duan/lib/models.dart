// class Product {
//   final String name;
//   final String image;
//   final double price;

//   Product({required this.name, required this.image, required this.price});
// }

// File: models.dart
// class Product {
//   final String id;
//   final String name;
//   final String image;
//   final double price;

//   Product({
//     required this.id,
//     required this.name,
//     required this.image,
//     required this.price,
//   });
// }

// class CartItem {
//   final String id;
//   final Product product;
//   int quantity;

//   CartItem({
//     required this.id,
//     required this.product,
//     required this.quantity,
//   });
// }

// File: models.dart

class Product {
  final String id;
  final String name;
  final String image;
  final double price;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
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
