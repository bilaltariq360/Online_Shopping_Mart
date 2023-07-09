import 'package:flutter/material.dart';
import '../screens/product_details.dart';
import '../models/product.dart';

class CartItem extends StatefulWidget {
  Product product;

  CartItem(this.product, {super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailScreen.routeName,
            arguments: widget.product);
      },
      child: Column(
        children: [
          Image.asset(
            widget.product.imgURL,
            width: 200,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(255, 255, 255, 0.1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: (widget.product.isFavorite)
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.favorite_border,
                          color: Color.fromRGBO(208, 255, 0, 1),
                        ),
                  onPressed: () {
                    setState(() {
                      widget.product.toogleFavorite();
                    });
                  },
                ),
                Text(
                  widget.product.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(208, 255, 0, 1),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add_shopping_cart,
                    color: Color.fromRGBO(208, 255, 0, 1),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
