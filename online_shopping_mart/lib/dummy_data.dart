import './models/product.dart';

class DummyData {
  static List<Product> products = [
    Product(
      title: 'Headphone',
      productDesc: 'Bassing headphones by beats',
      imgURL: 'assets/images/headphone.png',
      price: 350,
    ),
    Product(
      title: 'Jogger',
      productDesc: 'Addidas running joggers',
      imgURL: 'assets/images/joggers.png',
      price: 350,
    ),
    Product(
      title: 'Laptop',
      productDesc: 'Dell latitude laptops',
      imgURL: 'assets/images/laptops.png',
      price: 350,
    ),
    Product(
      title: 'Pant',
      productDesc: 'Jeans pant by LEE',
      imgURL: 'assets/images/pants.png',
      price: 350,
    ),
    Product(
      title: 'T-Shirt',
      productDesc: 'Soprts wear T-Shirt',
      imgURL: 'assets/images/shirt.png',
      price: 350,
    ),
    Product(
      title: 'Smart watch',
      productDesc: 'Smart watches',
      imgURL: 'assets/images/smart-watches.png',
      price: 350,
    ),
  ];
}
