import 'package:flutter/material.dart';

import './models/product.dart';

class ProductsData with ChangeNotifier {
  List<Product> products = [
    Product(
      title: 'Headphone',
      productDesc:
          'Beats headphones are renowned for delivering an immersive audio experience with exceptional sound quality. Designed by Dr. Dre, these headphones offer a stylish and modern aesthetic that appeals to fashion-conscious individuals. Featuring advanced audio technology, Beats headphones provide deep bass, crisp highs, and balanced mid-range frequencies, enhancing the listening experience across various music genres. They are also known for their comfortable fit, often equipped with cushioned ear cups and adjustable headbands.',
      imgURL: 'assets/images/headphone.png',
      price: 350,
    ),
    Product(
      title: 'Smart watch',
      productDesc:
          'Smartwatches have revolutionized the way we stay connected and track our health and fitness. These wearable devices offer a range of features including notifications for calls, messages, and social media, as well as music playback and GPS navigation. With built-in sensors, smartwatches can monitor heart rate, sleep patterns, and activity levels, providing valuable insights for a healthier lifestyle. They often come with customizable watch faces and interchangeable straps to suit personal style preferences.',
      imgURL: 'assets/images/smart-watches.png',
      price: 499.99,
    ),
    Product(
      title: 'Jogger',
      productDesc:
          'Adidas joggers are a popular choice for both athletic and casual wear. Crafted with comfort in mind, these joggers are made from high-quality materials, providing a soft and cozy feel. Known for their stylish designs, Adidas joggers often feature the iconic three-stripe branding and come in a variety of colors and patterns. With their relaxed fit and tapered legs, these joggers offer a modern and sporty look, making them a versatile wardrobe staple for everyday wear or workouts.',
      imgURL: 'assets/images/joggers.png',
      price: 149.99,
    ),
    Product(
      title: 'Laptop',
      productDesc:
          'Dell laptops are highly regarded for their reliability, performance, and innovative features. With a wide range of models available, Dell offers laptops suitable for various needs, from everyday use to professional work and gaming. These laptops are known for their sleek designs, durable build quality, and cutting-edge technology, including high-resolution displays, powerful processors, ample storage, and long-lasting battery life. Dell laptops often come equipped with advanced security features and provide a seamless user experience, making them a popular choice among individuals and businesses alike.',
      imgURL: 'assets/images/laptops.png',
      price: 999.99,
    ),
    Product(
      title: 'Jeans Short',
      productDesc:
          'Short jeans, also known as denim shorts, are a classic and stylish option for warm weather or casual occasions. They are typically made from durable denim fabric and offer a comfortable fit with a wide range of styles, including high-waisted, low-rise, distressed, or cuffed designs. Short jeans provide a versatile and laid-back look that can be dressed up or down, paired with t-shirts, tank tops, or blouses. They are a go-to choice for summer fashion, allowing for easy movement while showcasing a trendy and youthful vibe.',
      imgURL: 'assets/images/short.png',
      price: 80,
    ),
    Product(
      title: 'T-Shirt',
      productDesc:
          'T-shirts are timeless wardrobe staples that offer both comfort and style. Made from soft and breathable fabrics like cotton or blends, they provide a relaxed and casual fit for everyday wear. T-shirts come in a variety of designs, including solid colors, graphic prints, or slogans, allowing for personal expression and individuality. Whether worn as a standalone piece or layered with other clothing items, T-shirts are versatile, practical, and a go-to choice for effortless and laid-back fashion.',
      imgURL: 'assets/images/shirt.png',
      price: 45,
    ),
  ];

  double get totalPrice {
    double total = 0;
    for (var i = 0; i < products.length; i++) {
      total += products[i].price * products[i].quantity;
    }
    return total;
  }
}
