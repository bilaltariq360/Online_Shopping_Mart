import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import '../products_data.dart';
import '../screens/about_developer_screen.dart';
import '../screens/add_product.dart';
import './screens/products_screen.dart';
import './screens/favorites_screen.dart';
import './screens/product_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductsData(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        ProductsScreen.routeName: (context) => ProductsScreen(),
        FavoritesScreen.routeName: (context) => FavoritesScreen(),
        AboutDeveloperScreen.routeName: (context) => AboutDeveloperScreen(),
        ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
        AddProduct.routeName: (context) => AddProduct(),
      },
    );
  }
}
