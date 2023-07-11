import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/app_drawer.dart';
import '../products_data.dart';
import '../widgets/cart_item.dart';

class FavoritesScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static const routeName = '/favorites';

  FavoritesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsData>(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Favorites',
        ),
      ),
      drawer: AppDrawer(_scaffoldKey),
      body: (products.favProducts.isEmpty)
          ? Container(
              color: const Color.fromRGBO(22, 22, 22, 1),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.error_outline,
                    size: 100,
                    color: Color.fromRGBO(140, 140, 140, 1),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'No item found!',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(140, 140, 140, 1),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              color: const Color.fromRGBO(22, 22, 22, 1),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total price',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(208, 255, 0, 1),
                          ),
                        ),
                        Text(
                          "\$${context.read<ProductsData>().getTotalPrice.toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(208, 255, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.all(10),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 3 / 2,
                        mainAxisSpacing: 50,
                      ),
                      itemBuilder: (ctx, i) {
                        return ChangeNotifierProvider.value(
                          value: products.favProducts[i],
                          child: CartItem(),
                        );
                      },
                      itemCount: products.favProducts.length,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
