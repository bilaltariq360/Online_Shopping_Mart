import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class AboutDeveloperScreen extends StatelessWidget {
  static const routeName = '/about-developers';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  AboutDeveloperScreen({super.key});

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
        child: Text('About developer screen'),
      ),
    );
  }
}
