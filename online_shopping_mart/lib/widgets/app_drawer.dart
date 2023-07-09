import 'package:flutter/material.dart';
import '../screens/products_screen.dart';
import '../screens/favorites_screen.dart';
import '../screens/about_developer_screen.dart';

class AppDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;

  const AppDrawer(this._scaffoldKey, {super.key});

  Widget drawerBuild(String title, IconData icon, Function handler) {
    return InkWell(
      onTap: () {
        handler();
      },
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color.fromRGBO(208, 255, 0, 1),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(208, 255, 0, 1),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Drawer(
          backgroundColor: const Color.fromRGBO(22, 22, 22, 1),
          child: Column(
            children: [
              AppBar(
                title: const Text('Menu'),
                automaticallyImplyLeading: false,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.86,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          drawerBuild(
                              'All products', Icons.shopping_bag_outlined, () {
                            _scaffoldKey.currentState?.openEndDrawer();
                            Navigator.pushReplacementNamed(
                                context, ProductsScreen.routeName);
                          }),
                          drawerBuild('Favorites', Icons.favorite_outline, () {
                            _scaffoldKey.currentState?.openEndDrawer();
                            Navigator.pushReplacementNamed(
                                context, FavoritesScreen.routeName);
                          }),
                          drawerBuild('About developer', Icons.info_outline,
                              () {
                            _scaffoldKey.currentState?.openEndDrawer();
                            Navigator.pushReplacementNamed(
                                context, AboutDeveloperScreen.routeName);
                          }),
                          drawerBuild('Close', Icons.close, () {
                            _scaffoldKey.currentState?.openEndDrawer();
                          }),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Divider(
                              color: Color.fromRGBO(140, 140, 140, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Made with ❤️ by Bilal Tariq',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(140, 140, 140, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
