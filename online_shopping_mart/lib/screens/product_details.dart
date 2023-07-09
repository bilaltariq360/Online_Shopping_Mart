import 'package:flutter/material.dart';
import 'package:online_shopping_mart/dummy_data.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = '/product-details';
  ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      //key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Products details',
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(22, 22, 22, 1),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total price',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(208, 255, 0, 1),
                      ),
                    ),
                    Text(
                      '\$${DummyData.totalPrice.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(208, 255, 0, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(product.imgURL),
              const Text(
                'Items',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(208, 255, 0, 1),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 50),
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          product.decreaseQuantity();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(208, 255, 0,
                            1), // Set the button's background color
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ), // Set the border radius
                        ),
                      ),
                      child: const Text(
                        '-',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(22, 22, 22, 1),
                        ),
                      ),
                    ),
                    Text(
                      '${product.quantity}',
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(208, 255, 0, 1),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          product.increaseQuantity();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(208, 255, 0,
                            1), // Set the button's background color
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ), // Set the border radius
                        ),
                      ),
                      child: const Text(
                        '+',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(22, 22, 22, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(208, 255, 0, 1),
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(208, 255, 0, 1),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  product.productDesc,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(140, 140, 140, 1),
                  ),
                  textAlign: TextAlign.justify,
                  softWrap: true,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 30),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(
                        208, 255, 0, 1), // Set the button's background color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30), // Set the border radius
                    ),
                  ),
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(22, 22, 22, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
