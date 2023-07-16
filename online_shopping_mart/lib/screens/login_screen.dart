import 'package:flutter/material.dart';
import 'package:online_shopping_mart/screens/products_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  bool isError = false;

  Widget inputFieldBuild(String label, IconData icon, bool isPassword) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: TextField(
        controller: (label == 'Username') ? username : password,
        obscureText: (isPassword) ? true : false,
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
          fontSize: 22,
          letterSpacing: 1,
          color: Color.fromRGBO(208, 255, 0, 1),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(22, 22, 22, 1),
        width: double.infinity,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Image.asset(
                    'assets/images/online-shopping-mart.png',
                    width: 150,
                  ),
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(208, 255, 0, 1),
                  ),
                ),
                (isError)
                    ? Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Invalid username or password',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                      )
                    : const SizedBox(
                        width: 0,
                      ),
                const SizedBox(
                  height: 40,
                ),
                inputFieldBuild('Username', Icons.account_circle, false),
                inputFieldBuild('Password', Icons.password, true),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (username.text == 'clickcart' &&
                          password.text == 'bilal') {
                        setState(() {
                          isError = false;
                        });
                        Navigator.of(context)
                            .pushReplacementNamed(ProductsScreen.routeName);
                      } else {
                        setState(() {
                          isError = true;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(208, 255, 0, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
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
        ),
      ),
    );
  }
}
