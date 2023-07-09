import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../dummy_data.dart';
import '../widgets/cart_item.dart';

class ProductsScreen extends StatelessWidget {
  static const routeName = '/products';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ProductsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Online shopping mart',
        ),
      ),
      drawer: AppDrawer(_scaffoldKey),
      body: Container(
        color: const Color.fromRGBO(22, 22, 22, 1),
        child: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 50,
          ),
          itemBuilder: (ctx, i) => CartItem(DummyData.products[i]),
          itemCount: DummyData.products.length,
        ),
      ),
    );
  }
}
