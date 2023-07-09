import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class FavoritesScreen extends StatelessWidget {
  static const routeName = '/favorites';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Favorite products',
        ),
      ),
      drawer: AppDrawer(_scaffoldKey),
      body: const Center(
        child: Text('Favorites screen'),
      ),
    );
  }
}
