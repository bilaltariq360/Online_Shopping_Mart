class Product {
  final String id = DateTime.now().toString();
  final String title;
  final String productDesc;
  final String imgURL;
  final double price;
  bool isFavorite;

  Product({
    required this.title,
    required this.productDesc,
    required this.imgURL,
    required this.price,
    this.isFavorite = false,
  });

  void toogleFavorite() {
    isFavorite = !isFavorite;
  }
}
