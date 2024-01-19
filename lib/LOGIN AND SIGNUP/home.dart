import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOME"),),
      body: Center(
        child: Text(
          "Welcom user",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.pink,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}