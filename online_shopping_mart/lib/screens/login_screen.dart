import 'package:flutter/material.dart';
import 'package:online_shopping_mart/screens/products_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  Widget inputFieldBuild(String label, IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(
            icon,
            color: const Color.fromRGBO(208, 255, 0, 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Color.fromRGBO(208, 255, 0, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Color.fromRGBO(208, 255, 0, 1),
            ),
          ),
          labelStyle: const TextStyle(
            fontSize: 17,
            color: Color.fromRGBO(208, 255, 0, 1),
            letterSpacing: 1,
          ),
        ),
        style: const TextStyle(
          fontSize: 17,
          letterSpacing: 1,
          color: Color.fromRGBO(208, 255, 0, 1),
        ),
      ),
    );
  }

  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(22, 22, 22, 1),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/online-shopping-mart.png',
              width: 150,
            ),
            const Text(
              'Verify first',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(208, 255, 0, 1),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            inputFieldBuild('Username', Icons.account_circle),
            inputFieldBuild('Password', Icons.password),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ProductsScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(
                      208, 255, 0, 1), // Set the button's background color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30), // Set the border radius
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Color.fromRGBO(22, 22, 22, 1),
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(22, 22, 22, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
