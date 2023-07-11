import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class AboutDeveloperScreen extends StatelessWidget {
  static const routeName = '/about-developer';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  AboutDeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'About developer',
        ),
      ),
      drawer: AppDrawer(_scaffoldKey),
      body: Container(
        color: const Color.fromRGBO(22, 22, 22, 1),
        width: double.infinity,
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
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
