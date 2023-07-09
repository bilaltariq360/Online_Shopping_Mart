import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

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
      body: const Center(
        child: Text('Products screen'),
      ),
    );
  }
}
