class Product {
  final String id = DateTime.now().toString();
  final String title;
  final String productDesc;
  int quantity;
  final String imgURL;
  final double price;
  bool isFavorite;

  Product({
    required this.title,
    required this.productDesc,
    this.quantity = 0,
    required this.imgURL,
    required this.price,
    this.isFavorite = false,
  });

  void toogleFavorite() {
    isFavorite = !isFavorite;
  }

  void increaseQuantity() {
    quantity += 1;
  }

  void decreaseQuantity() {
    if (quantity > 0) quantity -= 1;
  }
}
