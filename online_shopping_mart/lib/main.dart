import 'package:flutter/material.dart';
import 'package:online_shopping_mart/screens/about_developer_screen.dart';
import './screens/products_screen.dart';
import './screens/favorites_screen.dart';
import './screens/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        primarySwatch: const MaterialColor(0xFF161616, {
          50: Color(0xFF161616),
          100: Color(0xFF161616),
          200: Color(0xFF161616),
          300: Color(0xFF161616),
          400: Color(0xFF161616),
          500: Color(0xFF161616),
          600: Color(0xFF161616),
          700: Color(0xFF161616),
          800: Color(0xFF161616),
          900: Color(0xFF161616),
        }),
        fontFamily: 'Poppins',
      ),
      home: ProductsScreen(),
      routes: {
        ProductsScreen.routeName: (context) => ProductsScreen(),
        FavoritesScreen.routeName: (context) => FavoritesScreen(),
        AboutDeveloperScreen.routeName: (context) => AboutDeveloperScreen(),
        ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
      },
    );
  }
}
