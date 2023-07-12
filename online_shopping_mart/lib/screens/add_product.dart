import 'package:flutter/material.dart';
import './products_screen.dart';

import '../widgets/app_drawer.dart';

class AddProduct extends StatelessWidget {
  static const routeName = '/add-product';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final bool appDrawerCheck =
        ModalRoute.of(context)!.settings.arguments as bool;
    return Scaffold(
        key: _scaffoldKey,
        floatingActionButton: InkWell(
          onTap: () {
            (appDrawerCheck)
                ? Navigator.of(context)
                    .pushReplacementNamed(ProductsScreen.routeName)
                : Navigator.of(context).pop(AddProduct.routeName);
          },
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromRGBO(208, 255, 0, 1),
              ),
              padding: const EdgeInsets.all(15),
              child: const Icon(Icons.add_to_home_screen)),
        ),
        appBar: AppBar(
          title: const Text(
            'Add product',
          ),
        ),
        drawer: (appDrawerCheck) ? AppDrawer(_scaffoldKey) : null,
        body: const Center(
          child: Text(
            'Coming Soon...',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
