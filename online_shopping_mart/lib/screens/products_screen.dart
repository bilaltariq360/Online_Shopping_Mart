import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/app_drawer.dart';
import '../products_data.dart';
import '../widgets/cart_item.dart';

class ProductsScreen extends StatelessWidget {
  static const routeName = '/products';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ProductsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsData>(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Online shopping mart',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  const Icon(
                    Icons.shopping_cart,
                    size: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 18, bottom: 5),
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Text(
                          '${context.read<ProductsData>().getTotalProducts}',
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: AppDrawer(_scaffoldKey),
      body: Container(
        color: const Color.fromRGBO(22, 22, 22, 1),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3 / 2,
                  mainAxisSpacing: 50,
                ),
                itemBuilder: (ctx, i) {
                  return ChangeNotifierProvider.value(
                    value: products.products[i],
                    child: CartItem(),
                  );
                },
                itemCount: products.products.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
