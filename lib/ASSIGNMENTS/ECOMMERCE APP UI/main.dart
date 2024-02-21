import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/ECOMMERCE%20APP%20UI/productpage.dart';
import 'package:flutter_projects/ASSIGNMENTS/ECOMMERCE%20APP%20UI/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set your initial route if needed
      routes: {
        '/': (context) => SplashScreen(),
        'productspage': (context) => ProductPage(),
      },
    );
  }
}
