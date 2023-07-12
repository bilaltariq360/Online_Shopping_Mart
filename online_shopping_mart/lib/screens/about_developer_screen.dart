import 'package:flutter/material.dart';
import './products_screen.dart';

import '../widgets/app_drawer.dart';

class AboutDeveloperScreen extends StatelessWidget {
  static const routeName = '/about-developer';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  AboutDeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: InkWell(
        onTap: () => Navigator.of(context)
            .pushReplacementNamed(ProductsScreen.routeName),
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
          'About developer',
        ),
      ),
      drawer: AppDrawer(_scaffoldKey),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromRGBO(22, 22, 22, 1),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/Bilal-Tariq.png',
                    width: 150,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Bilal Tariq',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(140, 140, 140, 1),
                  ),
                ),
                const Text(
                  'CEO - BrainDev Inc.',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color.fromRGBO(140, 140, 140, 1),
                  ),
                ),
                const SizedBox(height: 60),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: const Text(
                    '"I am a passionate full-stack Flutter mobile app developer currently pursuing Computer Science at FAST NUCES. With a strong foundation in software development and a keen eye for design, I strive to create innovative and user-friendly applications that make a positive impact. My goal is to continuously learn and grow in this ever-evolving field."',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(140, 140, 140, 1),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 55,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/github.png',
                            width: 30,
                          ),
                          const Text(
                            'bilaltariq360',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 0.8,
                              color: Color.fromRGBO(76, 76, 76, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 55,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/linked-in.png',
                            width: 28,
                          ),
                          const Text(
                            'ibilaltariq',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 0.8,
                              color: Color.fromRGBO(76, 76, 76, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 55,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/threads.png',
                            width: 25,
                          ),
                          const Text(
                            'ibilaltariq',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 0.8,
                              color: Color.fromRGBO(76, 76, 76, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
