class Product {
  final String id = DateTime.now().toString();
  final String productDesc;
  final String imgURL;
  final double price;
  bool isFavorite;

  Product({
    required this.productDesc,
    required this.imgURL,
    required this.price,
    required this.isFavorite,
  });
}
