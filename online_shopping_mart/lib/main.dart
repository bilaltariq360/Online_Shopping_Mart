import 'package:flutter/material.dart';
import 'package:online_shopping_mart/screens/about_developer_screen.dart';
import './screens/products_screen.dart';
import './widgets/app_drawer.dart';
import './screens/favorites_screen.dart';

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
        //primaryColor: const Color.fromRGBO(22, 22, 22, 1),
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
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      home: ProductsScreen(),
      routes: {
        ProductsScreen.routeName: (context) => ProductsScreen(),
        FavoritesScreen.routeName: (context) => FavoritesScreen(),
        AboutDeveloperScreen.routeName: (context) => AboutDeveloperScreen(),
      },
    );
  }
}
