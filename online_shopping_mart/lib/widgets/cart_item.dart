import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/product_details.dart';
import '../models/product.dart';
import '../products_data.dart';

class CartItem extends StatelessWidget {
  //final ProductsData products;

  //CartItem(this.products);
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailScreen.routeName,
            arguments: product);
      },
      child: Column(
        children: [
          Image.asset(
            product.imgURL,
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
                Consumer<Product>(
                  builder: (context, value, child) => IconButton(
                    icon: (product.isFavorite)
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Color.fromRGBO(208, 255, 0, 1),
                          ),
                    onPressed: () {
                      if (product.toogleFavorite()) {
                        context.read<ProductsData>().addFavProduct(product.id);
                      } else {
                        context
                            .read<ProductsData>()
                            .removeFavProduct(product.id);
                      }
                    },
                  ),
                ),
                Text(
                  product.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(208, 255, 0, 1),
                  ),
                ),
                Consumer<Product>(
                  builder: (context, value, child) => IconButton(
                    icon: (product.quantity == 0)
                        ? const Icon(
                            Icons.add_shopping_cart,
                            color: Color.fromRGBO(208, 255, 0, 1),
                          )
                        : const Icon(
                            Icons.check,
                            color: Color.fromRGBO(208, 255, 0, 1),
                          ),
                    onPressed: () {
                      if (product.quantity == 0) {
                        product.increaseQuantity();
                        context.read<ProductsData>().getTotalProducts;
                        context.read<ProductsData>().getTotalPrice;
                      } else if (product.quantity == 1) {
                        product.decreaseQuantity();
                        context.read<ProductsData>().getTotalProducts;
                        context.read<ProductsData>().getTotalPrice;
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
