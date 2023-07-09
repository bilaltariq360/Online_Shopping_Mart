import 'package:flutter/material.dart';
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
    return GridTile(
      footer: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTileBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.1),
          leading: IconButton(
            icon: (widget.product.isFavorite)
                ? const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
            onPressed: () {
              setState(() {
                widget.product.toogleFavorite();
              });
            },
          ),
          title: Text(
            widget.product.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ),
      child: Image.asset(
        widget.product.imgURL,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
